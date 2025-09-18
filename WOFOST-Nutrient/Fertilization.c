#include <stdio.h>
#include "wofost.h"
#include "extern.h"
#include "npcycling.h"

/*---------------------------------------------------------------*/
/* function IfFertilization ()                                   */
/* Purpose: Check if fertilization before sowing                 */
/*---------------------------------------------------------------*/

#include <time.h>

void IfFertilization()  
{
    NPC->Fertilization = 0;

    // Convert both dates to time_t (seconds since epoch)
    time_t t_sow   = mktime(&sow_date);
    time_t t_curr  = mktime(&current_date);

    // Calculate day difference (round to nearest day)
    int diff_days = (int) difftime(t_curr, t_sow) / (60 * 60 * 24);

    // Check ranges directly
    if (MeteoYear[Day] <= Meteo->EndYear) {
        if (diff_days >= -4 && diff_days <= 2)
            NPC->Fertilization = 11;
        else if (diff_days >= 3 && diff_days <= 25)
            NPC->Fertilization = 12;
        else if (diff_days >= 26 && diff_days <= 55)
            NPC->Fertilization = 13;
    }
}



/*---------------------------------------------------------------*/
/* function IfMultiFertilization ()                              */
/* Purpose: Check if fertilization is applied while crop growing */
/*---------------------------------------------------------------*/

void IfMultiFertilization()
{
    if (Crop->st.Development >= 2.0 && Crop->Sowing == 0) {

        // Convert both dates to time_t (seconds since epoch)
        time_t t_harvest = mktime(&harvest_date);
        time_t t_curr    = mktime(&current_date);

        // Calculate difference in days
        int diff_days = (int) difftime(t_curr, t_harvest) / (60 * 60 * 24);

        if (MeteoYear[Day] <= Meteo->EndYear) {
            if (diff_days >= 0 && diff_days <= 29)
                NPC->Fertilization = 21;   // phase 1
            else if (diff_days >= 30 && diff_days <= 59)
                NPC->Fertilization = 22;   // phase 2
        }
    }
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
    float InorgPInput = 0.;
    float ManurePInput = 0.;
    float ResiduePInput = 0.;

    float Prop_manure_decompPhase1 = 0.50;  // Proportion of components in manure that can be decomposed in 7 days
    float Prop_manure_decompPhase2 = 0.15;  // Proportion of components in manure that can be decomposed in 60 days

    float Prop_residue_decompPhase1 = 0.50; // Proportion of components in residue that can be decomposed in 30 days
    float Prop_residue_decompPhase2 = 0.20; // Proportion of components in residue that can be decomposed in 60 days

    NPC->P_fert_input = 0.0;

    if (NPC->Fertilization == 11)
    {
        if(isnan(Inorg_P_appRate[Lon][Lat][Crop->Seasons-1])){
            InorgPInput = 0.0;} 
            else{
                InorgPInput = Inorg_P_appRate[Lon][Lat][Crop->Seasons-1];
            }
        if(isnan(Manure_P_appRate[Lon][Lat][Crop->Seasons-1])){
            ManurePInput = 0.0;} 
            else{
                ManurePInput = Prop_manure_decompPhase1 * Manure_P_appRate[Lon][Lat][Crop->Seasons-1];
            } 
        
        ResiduePInput = Prop_residue_decompPhase1 * NPC->P_residue_beforeSowing;
            
        NPC->P_fert_input = (InorgPInput + ManurePInput)/7 + ResiduePInput/30;     
    } 

    else if (NPC->Fertilization == 12)
    {
        if(isnan(Manure_P_appRate[Lon][Lat][Crop->Seasons-1])){
            ManurePInput = 0.0;} 
            else{
                ManurePInput = Prop_manure_decompPhase2 * Manure_P_appRate[Lon][Lat][Crop->Seasons-1];
            } 
        
        ResiduePInput = Prop_residue_decompPhase1 * NPC->P_residue_beforeSowing;
            
        NPC->P_fert_input = ManurePInput/53 + ResiduePInput/30;   
    }

    else if (NPC->Fertilization == 13)
    {
        if(isnan(Manure_P_appRate[Lon][Lat][Crop->Seasons-1])){
            ManurePInput = 0.0;} 
            else{
                ManurePInput = Prop_manure_decompPhase2 * Manure_P_appRate[Lon][Lat][Crop->Seasons-1];
            } 
        
        ResiduePInput = Prop_residue_decompPhase2 * NPC->P_residue_beforeSowing;
            
        NPC->P_fert_input = ManurePInput/53 + ResiduePInput/30;   
    }

    else if (NPC->Fertilization == 21)
    {
        ResiduePInput = Prop_residue_decompPhase1 * NPC->P_residue_afterHavest;
        NPC->P_fert_input = ResiduePInput/30;   
    }

    else if (NPC->Fertilization == 22)
    {
        ResiduePInput = Prop_residue_decompPhase2 * NPC->P_residue_afterHavest;
        NPC->P_fert_input = ResiduePInput/30;   
    }

    else{
        NPC->P_fert_input = 0;
    }
    
    NPC->p_st.P_fert_input += NPC->P_fert_input;
    NPC->P_unavail_org_fert = 0.;
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

    if (NPC->Fertilization == 11)
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