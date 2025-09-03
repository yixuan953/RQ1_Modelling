#include <stdio.h>
#include "wofost.h"
#include "extern.h"
#include "npcycling.h"

/*---------------------------------------------------------------*/
/* function IfFertilization ()                                   */
/* Purpose: Check if fertilization before sowing                 */
/*---------------------------------------------------------------*/

void IfFertilization(char* dateString) 
{
    NPC->Fertilization = 0;

    int month, sow_day;
    sscanf(dateString, "%d-%d", &month, &sow_day);

    // Build a tm structure for the sowing date (in the current year)
    struct tm sow_date = {0};
    sow_date.tm_year = current_date.tm_year;
    sow_date.tm_mon = month - 1;    // tm_mon is 0-based
    sow_date.tm_mday = sow_day;

    // Normalize to correct tm_wday, tm_yday, etc.
    mktime(&sow_date);

    for(int offset = -4; offset <= 2; offset++){
        struct tm fert_date = sow_date; 
        fert_date.tm_mday += offset;
        mktime(&fert_date); // Normalize each time
        if (current_date.tm_year == fert_date.tm_year && 
            current_date.tm_mon == fert_date.tm_mon && 
            current_date.tm_mday == fert_date.tm_mday && 
            MeteoYear[Day] <= Meteo->EndYear)
            {
                NPC->Fertilization = 1; 
                break;
            } 
    }
    
    for(int offset = 3; offset <= 25; offset++){
        struct tm fert_date = sow_date; 
        fert_date.tm_mday += offset;
        mktime(&fert_date); // Normalize each time
        if (current_date.tm_year == fert_date.tm_year && 
            current_date.tm_mon == fert_date.tm_mon && 
            current_date.tm_mday == fert_date.tm_mday && 
            MeteoYear[Day] <= Meteo->EndYear)
            {
                NPC->Fertilization = 2; 
                break;
            } 
    } 

    for(int offset = 26; offset <= 85; offset++){
        struct tm fert_date = sow_date; 
        fert_date.tm_mday += offset;
        mktime(&fert_date); // Normalize each time
        if (current_date.tm_year == fert_date.tm_year && 
            current_date.tm_mon == fert_date.tm_mon && 
            current_date.tm_mday == fert_date.tm_mday && 
            MeteoYear[Day] <= Meteo->EndYear)
            {
                NPC->Fertilization = 3; 
                break;
            } 
    }     
}


/*---------------------------------------------------------------*/
/* function IfMultiFertilization ()                              */
/* Purpose: Check if fertilization is applied while crop growing */
/*---------------------------------------------------------------*/

void IfMultiFertilization()
{

}



/*---------------------------------------------------------------------------------*/
/* function CalResidueInput()                                                      */
/* Purpose: Calculate residue input based on the simulation of the previous season */
/*---------------------------------------------------------------------------------*/

void CalResidueInput(){
    if (Crop->prm.N_fixation == 0.0){ 
        NPC->N_residue_afterHavest = Crop->N_st.roots;
        NPC->N_residue_beforeSowing = (Crop->N_st.leaves + Crop->N_st.stems)* Res_return_ratio[Lon][Lat][Crop->Seasons-1];
        NPC->P_residue_afterHavest = Crop->P_st.roots;
        NPC->P_residue_beforeSowing = (Crop->P_st.leaves + Crop->P_st.stems)* Res_return_ratio[Lon][Lat][Crop->Seasons-1];

    } else { // If the crop is soybean, then all of the residues will remian in the soil after harvest
        NPC->N_residue_afterHavest = Crop->N_st.roots + Crop->N_st.leaves + Crop->N_st.stems;
        NPC->N_residue_beforeSowing = 0.0;
        NPC->P_residue_afterHavest = Crop->P_st.roots + Crop->P_st.leaves + Crop->N_st.stems;
        NPC->P_residue_beforeSowing = 0.0;
    }
}


/*------------------------------------------------------------*/
/* function GetPFertInput()                                   */
/* Purpose: Get the inorganic and manure P fertilizer inputs  */
/*------------------------------------------------------------*/

void GetPFertInput()
{
    Org_frac = 0.5;
    float InorgPInput = 0.;
    float ManurePInput = 0.;
    float OrgPInput = 0.;
    NPC->P_fert_input = 0.0;

    if (NPC->Fertilization == 1)
    {
        if(isnan(Inorg_P_appRate[Lon][Lat][Crop->Seasons-1])){
            InorgPInput = 0.0;} 
            else{
                InorgPInput = Inorg_P_appRate[Lon][Lat][Crop->Seasons-1];
            }
        
        InorgPInput = InorgPInput/7;
    } 
    else{
        InorgPInput = 0;
    }
    
    if(isnan(Manure_P_appRate[Lon][Lat][Crop->Seasons-1])){
            ManurePInput= 0.0;} 
        else{
            ManurePInput = Manure_P_appRate[Lon][Lat][Crop->Seasons-1];
        }
    
    OrgPInput = Org_frac * (ManurePInput + NPC->P_residue_beforeSowing + NPC->P_residue_afterHavest)/365;

    NPC->P_unavail_org_fert = 0;
    NPC->P_unavail_org_fert = Org_frac * (ManurePInput + NPC->P_residue_beforeSowing + NPC->P_residue_afterHavest);


    NPC->P_fert_input = InorgPInput + OrgPInput;
    NPC->p_st.P_fert_input += NPC->P_fert_input;
}

/*------------------------------------------------------------*/
/* function GetNFertInput()                                   */
/* Purpose: Get the inorganic and manure N fertilizer inputs  */
/*------------------------------------------------------------*/
void GetNFertInput()
{    
    float Urea_N_input;
    float Other_inorg_N_input;
    float Manure_N_input;
    float Residue_N_input;
    float Org_frac = 0.5;

    if (NPC->Fertilization == 1)
    {

        if(isnan(Urea_inorg_N_appRate[Lon][Lat][Crop->Seasons-1])){
            Urea_N_input = 0.0;} 
            else{
                Urea_N_input = Urea_inorg_N_appRate[Lon][Lat][Crop->Seasons-1]*(1 - EF_NH3_Urea - EF_NOx[Lon][Lat][Crop->Seasons-1] - EF_N2O_Inorg - L_runoff_max * min(f_precip_surf,f_texture));
            }

        if(isnan(Other_inorg_N_appRate[Lon][Lat][Crop->Seasons - 1])){
            Other_inorg_N_input= 0.0;} 
            else{
                Other_inorg_N_input = Other_inorg_N_appRate[Lon][Lat][Crop->Seasons-1]*(1 - EF_NH3_Inorg - EF_NOx[Lon][Lat][Crop->Seasons-1] - EF_N2O_Inorg - L_runoff_max * min(f_precip_surf,f_texture));
            }

        if(isnan(Manure_N_appRate[Lon][Lat][Crop->Seasons - 1])){
            Manure_N_input= 0.0;} 
            else{
                Manure_N_input = Manure_N_appRate[Lon][Lat][Crop->Seasons-1]*(1 - EF_NH3_Manure - EF_NOx[Lon][Lat][Crop->Seasons-1] - EF_N2O_Org -  L_runoff_max * min(f_precip_surf,f_texture));
            }

        Residue_N_input = (NPC->N_residue_beforeSowing + NPC->N_residue_afterHavest) * (1 - EF_N2O_Org);
        
        NPC->N_fert_input = Urea_N_input + Other_inorg_N_input + Org_frac* (Manure_N_input + Residue_N_input);
        NPC->N_fert_input = NPC->N_fert_input/7;

        NPC->N_unavail_org_fert = 0;
        NPC->N_unavail_org_fert = (1 - Org_frac) * (Manure_N_input + NPC->N_residue_beforeSowing + NPC->N_residue_afterHavest);

    } else{
        NPC->N_fert_input = 0;
    }

    NPC->n_st.N_fert_input += NPC->N_fert_input;
}