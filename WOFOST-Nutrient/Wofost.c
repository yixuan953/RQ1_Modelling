#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include <float.h>
#include <math.h>
#include "wofost.h"
#include "extern.h"
#include "npcycling.h"


int main(int argc, char **argv)
{

    FILE **files_DO; 
    FILE **files_AO; 
    FILE *fptr_DO;  
    FILE *fptr_AO;   

    SimUnit *initial = NULL; 
    Weather *head;           
    Nutri *head_nutri;        
    Water_Irri *head_irri;       
    Green *wipe;             

    // maize-160; wheat-270; rice-180; soybean-150
    int CycleLength = 180; // Maximum growing days for each crop type
    int NumberOfFiles;     
    int Emergence;         
    int i;                 

    char list[MAX_STRING];     
    char meteolist[MAX_STRING]; 
    char fertlist[MAX_STRING];
    char irrilist[MAX_STRING]; 
    char name_DO[MAX_STRING];      
    char name_old_DO[MAX_STRING];  
    char name_AO[MAX_STRING];      
    char name_old_AO[MAX_STRING];  

    Step = 1.; 

    if (argc!=5)
        exit(0); 
    if (strlen(argv[1]) >= MAX_STRING)
        exit(0); 
    if (strlen(argv[2]) >= MAX_STRING)
        exit(0); 
    if (strlen(argv[3]) >= MAX_STRING)
        exit(0);
    if (strlen(argv[4]) >= MAX_STRING)
        exit(0); 

    // empty the memory string
    memset(list, '\0', MAX_STRING);
    memset(meteolist, '\0', MAX_STRING); 
    memset(fertlist, '\0', MAX_STRING); 
    memset(irrilist, '\0', MAX_STRING); 

    strncpy(list, argv[1], strlen(argv[1]));
    strncpy(meteolist, argv[2], strlen(argv[2]));
    strncpy(fertlist, argv[3], strlen(argv[3]));
    strncpy(irrilist, argv[4], strlen(argv[4]));

    /* Fill the crop, soil, site and management place holders*/
    NumberOfFiles = GetSimInput(list);

    /* Set the initial Grid address */
    initial = Grid;

    /* Get the meteo filenames and put them in the placeholder */
    GetMeteoInput(meteolist);
    GetFertInput(fertlist);
    GetIrriInput(irrilist);

    Grid->npc = (NPCycling *)malloc(sizeof(NPCycling)); // Allocate memory space for NPCycling variables

    /* Allocate memory for the file pointers */            
    files_DO = malloc(sizeof(**files_DO) * NumberOfFiles); 
    files_AO = malloc(sizeof(**files_AO) * NumberOfFiles); 

    /* Go back to the beginning of the list */ 
    Grid = initial;

    /* Open the output files */                           
    memset(name_old_DO, '\0', MAX_STRING);                 
    memset(name_old_AO, '\0', MAX_STRING);                 

    while (Grid)                                          
    {                                                      /* Make valgrind happy  */
        memset(name_DO, '\0', MAX_STRING);                    
        memset(name_AO, '\0', MAX_STRING);                    
        strncpy(name_DO, Grid->output_daily, strlen(Grid->output_daily)); 
        strncpy(name_AO, Grid->output_annual, strlen(Grid->output_annual)); 

        if (strcmp(name_old_DO, name_DO) != 0) 
        {
            
            files_DO[Grid->file_DO] = fptr_DO = fopen(name_DO, "w");
            if (files_DO[Grid->file_DO] == NULL) 
            {
                fprintf(stderr, "Cannot initialize output file %s.\n", name_DO); 
                exit(0);                                                      
            }
            header_DO(files_DO[Grid->file_DO]); 
        }
        else
        {

            if (fptr_DO != NULL)
                files_DO[Grid->file_DO] = fptr_DO;
            else
            {
                fprintf(stderr, "Cannot initialize file pointer\n"); 
                exit(0);                                             
            }
        }

        if (strcmp(name_old_AO, name_AO) != 0) 
        {

            files_AO[Grid->file_AO] = fptr_AO = fopen(name_AO, "w");
            if (files_AO[Grid->file_AO] == NULL) // 如果文件打开失败
            {
                fprintf(stderr, "Cannot initialize output file %s.\n", name_AO); 
                exit(0);                                                      
            }
            header_AO(files_AO[Grid->file_AO]); 
        }
        else
        {

            if (fptr_AO != NULL)
                files_AO[Grid->file_AO] = fptr_AO;
            else
            {
                fprintf(stderr, "Cannot initialize file pointer\n"); 
                exit(0);                                            
            }
        }

        // allocate memory for the statistical analysis /
        for (i = 0; i <= Meteo->Seasons; i++)
        {
            Grid->twso[i] = 0.0;
            Grid->length[i] = 0.0;
        }


        memset(name_old_DO, '\0', MAX_STRING);                    
        memset(name_old_AO, '\0', MAX_STRING);                    
        strncpy(name_old_DO, Grid->output_daily, strlen(Grid->output_daily)); 
        strncpy(name_old_AO, Grid->output_annual, strlen(Grid->output_annual)); 

        Grid->flag = 0;    // force end of simulations in endyear
        Grid = Grid->next; 
    }

    /* Go back to the beginning of the list */
    Grid = initial;
    
    /* Reading irrigation data */
    while(Irri)
    {
        /* Get the irrigation data */
        if (GetIrriData(Irri) != 1)
        {
            fprintf(stderr, "Cannot get irrigation data.\n");
            exit(0);
        }
        printf("running %d - %d\n", Irri->StartYear, Irri->EndYear);

        head_irri = Irri;
        Irri = Irri->next;
    }
    
    /* Reading fertilization data */
    while(Fert)
    {
        /* Get the fertilization data */
        if (GetFertData(Fert) != 1)
        {
            fprintf(stderr, "Cannot get fertilization data.\n");
            exit(0);
        }
        printf("running %d - %d\n", Fert->StartYear, Fert->EndYear);   
        head_nutri = Fert;
        Fert = Fert->next;        
    }

    while (Meteo)
    {
        /* Get the meteodata */
        if (GetMeteoData(Meteo) != 1)
        {
            fprintf(stderr, "Cannot get meteo data.\n");
            exit(0);
        }
        printf("running %d - %d\n", Meteo->StartYear, Meteo->EndYear);

        for (Lon = 0; Lon < Meteo->nlon; Lon++)
        {
            for (Lat = 0; Lat < Meteo->nlat; Lat++)
            {
                
                if (isnan(Sow_date[Lon][Lat])||Sow_date[Lon][Lat]==0) 
                {
                    continue;
                }
       

                // Initialize the time step of irrigation data
                Irri_time_count = malloc(Meteo->nlon * sizeof(int *));
                for (size_t i = 0; i < Meteo->nlon; i++) {
                    Irri_time_count[i] = malloc(Meteo->nlat * sizeof(int));
                    for (size_t j = 0; j < Meteo->nlat; j++) {
                        Irri_time_count[i][j] = -1;  // Initialize
                    }
                }

                // Go back to the beginning of the list and rest grid value flag,and twso and length
                Grid = initial;
              
                while (Grid)
                {
                    Grid->flag = 0;
                    char* sow_date_dekad = DekadDate(Sow_date[Lon][Lat]);
                    strcpy(Grid->start, sow_date_dekad); // Use strcpy to assign the new value
                    free(sow_date_dekad);

                    // Build a tm structure for the sowing date 
                    int sow_month, sow_day;
                    sscanf(Grid->start, "%d-%d", &sow_month, &sow_day);
                    memset(&sow_date, 0, sizeof(sow_date));
                    sow_date.tm_mon = sow_month - 1;    // tm_mon is 0-based
                    sow_date.tm_mday = sow_day;

                    // Allocate spcae for harvest_date
                    for (i = 0; i <= Meteo->Seasons; i++)
                    {
                        Grid->twso[i] = 0.0;
                        Grid->length[i] = 0.0;
                        Grid->crp->Seasons = 1;
                    }
                    Grid = Grid->next;
                }

                for (Day = 0; Day < Meteo->ntime; Day++)
                {

                    Grid = initial;

                    /* Set the date struct */
                    memset(&current_date, 0, sizeof(current_date));
                    current_date.tm_year = MeteoYear[Day] - 1900;
                    current_date.tm_mday = 0 + MeteoDay[Day];
                    mktime(&current_date);

                    sow_date.tm_year = current_date.tm_year;
                    mktime(&sow_date);
    
                    while (Grid)
                    {
                        /* Get data, states and rates from the Grid structure and */
                        /* put them in the place holders */                        
                        Crop = Grid->crp;
                        Crop->prm.TempSum1 = TSUM1[Lon][Lat];
                        Crop->prm.TempSum2 = TSUM2[Lon][Lat];
                        
                        WatBal = Grid->soil;
                        Mng = Grid->mng;
                        Site = Grid->ste;
                        NPC = Grid->npc;

                        Emergence = Grid->emergence; /* Start simulation at sowing or emergence */

                        Temp = 0.5 * (Tmax[Lon][Lat][Day] + Tmin[Lon][Lat][Day]);
                        DayTemp = 0.5 * (Tmax[Lon][Lat][Day] + Temp);
                        AveTemp += DayTemp/(Day+1);
                        
                        NPC->n_st.N_dep += N_total_dep[Lon][Lat][Day]; 
                        NPC->p_st.P_dep += P_total_dep[Lon][Lat][Day];
                            
                        if (Day <= 1){

                            CalSoilTexturePara();   // Calculate N, P cycling related parameters

                            CalMaxPPoolSize();      // Calculate the maximum P pool sizes for labile and stable P pool [mmol/kg]
                            CalMaxTSMD();           // Calculate the maximum daily topsoil mositure deficit [mm]

                            InitializeWatBal();     // Initialize water balance 
                            InitializeSoilPPool();  // Initialize the soil P pool

                            InitilizeNPBalance();   // Initialize N balance for each cropping season
                            
                            CalEmissionFactor();    // Calculate the initial emission factors for N losses
                            CalRunoffFactors();     // Calculate the initial runoff factors for N losses
                            RatesToZero();
                        }

                        /* Only simulate between start and end year */ 
                        if ((MeteoYear[Day] >= Meteo->StartYear && MeteoYear[Day] <= Meteo->EndYear) && (Meteo->Seasons >= Crop->Seasons))
                        {

                            /* Initilize rate */
                            RatesToZero();           

                            /* Determine if the fertilization already has occurred */ 
                            IfFertilization();
                            IfMultiFertilization();
                            GetPFertInput();
                            GetNFertInput(); 

                            /* Determine if the sowing already has occurred */ 
                            IfSowing(Grid->start);

                            if(Crop->Sowing == 0 || Crop->Emergence == 0)
                            {
                                Astro();
                                CalcPenman();
                                CalcPenmanMonteith();
                                EvapTra(); 
                                RateCalulationWatBal(); 
                                IntegrationWatBal();
                                CalDecomp();
                                CalPConcentration();
                                CalPPoolDynamics();                                       
                            }
                            
                            /* If sowing has occurred than determine the emergence */ 
                            if (Crop->Sowing >= 1 && Crop->Emergence == 0)
                            {

                                if (EmergenceCrop(Emergence)) // Check if the emergence can happen or not
                                {
                                    /* Initialize: set state variables */ 
                                    InitializeCrop();
                                    InitializeNutrients();                       
                                }
                            }

                            if (Crop->Sowing >= 1 && Crop->Emergence == 1)
                            {
                                if (Crop->st.Development <= (Crop->prm.DevelopStageHarvest) && Crop->GrowthDay < CycleLength)
                                {
                                    /* Set the rate variables to zero */ 
                                    RatesToZero();          // It includes the rate in terms of crop, site, and WatBal

                                    /* Calculate evapotranspiration */ 
                                    Astro();
                                    CalcPenman();
                                    CalcPenmanMonteith();
                                    EvapTra();

                                    /* Rate calculations */ 
                                    RateCalulationWatBal();    // Here the water balance is calculated considering the input of irrigation

                                    /* Calculate the nutrient avaliability and crop uptakes*/
                                    CalPConcentration();       // Calculate the P concentration of soil solution
                                    CalNutriAvail();           // Calculate the nutrients availability: NEW!
                                    Partioning();              
                                    RateCalcultionNutrients(); // To calculate the nutrient availability, stress index, and uptake
                                    RateCalculationCrop();

                                    /* Calculate LAI */ 
                                    Crop->st.LAI = LeaveAreaIndex();

                                    /* State calculations */ 
                                    IntegrationCrop();
                                    IntegrationWatBal();
                                    IntegrationNutrients();
                                    
                                    /* Update the soil P pools and calculate the SOM decomposition using the water balance of the current day*/
                                    CalDecomp();
                                    CalPPoolDynamics();

                                    /* Update the number of days that the crop has grown*/ 
                                    Crop->GrowthDay++;
                                }

                                else {       
                                    /* Record the date when crop is harvested */
                                    memset(&harvest_date, 0, sizeof(harvest_date));
                                    harvest_date.tm_year = current_date.tm_year;
                                    harvest_date.tm_mon = current_date.tm_mon;
                                    harvest_date.tm_mday = current_date.tm_mday;
                                    mktime(&harvest_date);  

                                    /* After harvest: Calculate the parameters that will be used for the next season*/
                                    CalEmissionFactor(); // Emission factors
                                    CalRunoffFactors();  // Runoff factors

                                    /* Calculate nitrogen balance of this season*/
                                    CalNBalance();

                                    /* Write to the output files: Seasonal scale */ 
                                    Grid->twso[Crop->GrowthDay] = Crop->st.storage;
                                    Grid->length[Crop->GrowthDay] = Crop->GrowthDay;

                                    Output_Annual(files_AO[Grid->file_AO]);

                                    /* Clean the LeaveProperties */ 
                                    while (Crop->LeaveProperties != NULL)
                                    {
                                        wipe = Crop->LeaveProperties;
                                        Crop->LeaveProperties = Crop->LeaveProperties->next;
                                        free(wipe); 
                                    }

                                    // Initialize the crop growth
                                    Emergence = 0;
                                    Crop->TSumEmergence = 0;
                                    Crop->Emergence = 0;
                                    Crop->Sowing = 0;
                                    Crop->Seasons++;

                                    // Initialize the precipitation surplus
                                    WatBal->st.PreSurplus = 0;

                                    // Initialize the P accumulation
                                    NPC->p_st.Pacc = 0;

                                    CalResidueInput();   // Using the residue N, P content in root, leaves and stems as the input of the next season  

                                    // Initialize the N balance, P losses and soil water moisture after each cropping season
                                    InitilizeNPBalance(); 
                                    InitializeWatBal(); 
                                    RatesToZero();   
                                 
                                }
                            }

                        Output_Daily(files_DO[Grid->file_DO]);
                        }   


                        /* Store the daily calculations in the Grid structure */ 
                        Grid->crp = Crop;
                        Grid->soil = WatBal;
                        Grid->mng = Mng;
                        Grid->ste = Site;
                        Grid->npc = NPC;
                        Grid = Grid->next;
                    }
                }
                // Clean the Irri_time_count:
                 for (size_t i = 0; i < Meteo->nlon; i++) {
                    free(Irri_time_count[i]);
                 }
                 free(Irri_time_count);
                 Irri_time_count = NULL;

            }
        }

        head = Meteo;
        Meteo = Meteo->next;
        CleanMeteo(head); 
        free(head);       
    }

    /* Return to the beginning of the list */ 
    Grid = initial;

    /* Close the output files and free the allocated memory */
    fptr_DO = NULL;
    fptr_AO = NULL;

    while (Grid)
    {
        if (files_DO[Grid->file_DO] != fptr_DO)
        {
            if (Grid->file_DO < NumberOfFiles)
            {
                fptr_DO = files_DO[Grid->file_DO];
                fclose(files_DO[Grid->file_DO]); 
            }
        }
        if (files_AO[Grid->file_AO] != fptr_AO)
        {
            if (Grid->file_AO < NumberOfFiles)
            {
                fptr_AO = files_AO[Grid->file_AO];
                fclose(files_AO[Grid->file_AO]); 
            }
        }
        Grid = Grid->next;
    }

    /* Go back to the beginning of the list */ 
    Grid = initial;
    Clean(Grid); 
    return 1;
}
