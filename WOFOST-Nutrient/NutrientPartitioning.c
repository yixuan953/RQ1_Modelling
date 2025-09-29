#include <stdio.h>
#include <stdlib.h>
#include <math.h>
#include "wofost.h"
#include "extern.h"
#include "penman.h"

/* -------------------------------------------------------------------------*/
/*  function NutrientPartioning()                                           */
/*  Purpose: To compute the partitioning of the total N/P/K uptake rate     */
/*           (N,P,K UPTR) over leaves, stem, and roots kg  ha-1 d-1         */
/* -------------------------------------------------------------------------*/
void NutrientPartioning()
{     
    float Total_N_demand = 0;
    float Total_P_demand = 0;
    float Total_K_demand = 0;
    
    float NutrientLimit;
    float N_Fix_rt;
    float K_avail;
    float tiny = 0.001; 

    K_avail = Site->st_K_tot + Site->rt_K_mins;
    
    Total_N_demand = Crop->N_rt.Demand_lv + Crop->N_rt.Demand_st + Crop->N_rt.Demand_ro;
    Total_P_demand = Crop->P_rt.Demand_lv + Crop->P_rt.Demand_st + Crop->P_rt.Demand_ro;
    Total_K_demand = Crop->K_rt.Demand_lv + Crop->K_rt.Demand_st + Crop->K_rt.Demand_ro;
    
    /* No nutrients are absorbed from the soil after development stage DevelopmentStageNLimit or */
    /* when severe water shortage occurs*/
    NutrientLimit = 0.;
    if (Crop->st.Development < Crop->prm.DevelopmentStageNLimit && WatBal->rt.Transpiration/Evtra.MaxTranspiration > 0.01)
        NutrientLimit = 1.;
    
    //N_Fix_rt= max(0.,Crop->N_rt.Uptake * Crop->prm.N_fixation / max(0.02, 1.-Crop->prm.N_fixation));
    N_Fix_rt = (max(0., Crop->prm.N_fixation * Total_N_demand) * NutrientLimit);
    NPC->n_st.N_fixation += N_Fix_rt;
    
    // I use the N, P availability above to replace the availability calculated based on the management file
    /* Without nutrient limitation */
    // Crop->N_rt.Uptake = fmax(0., min((Total_N_demand - N_Fix_rt), Crop->prm.N_UptakeMax)) * NutrientLimit/Step;
    // Crop->P_rt.Uptake = fmax(0., min(Total_P_demand, Crop->prm.P_UptakeMax))* NutrientLimit/Step;
    // Crop->K_rt.Uptake = fmax(0., min(Total_K_demand, Crop->prm.K_UptakeMax))* NutrientLimit/Step;

    /* With nutrient limitation */
    Crop->N_rt.Uptake = fmax(0., ext_min((Total_N_demand - N_Fix_rt), NPC->st_N_avail, Crop->prm.N_UptakeMax)) * NutrientLimit/Step;
    Crop->P_rt.Uptake = fmax(0., ext_min(Total_P_demand, NPC->st_P_avail, Crop->prm.P_UptakeMax))* NutrientLimit/Step;
    Crop->K_rt.Uptake = fmax(0., ext_min(Total_K_demand, K_avail, Crop->prm.K_UptakeMax))* NutrientLimit/Step;

    /* N uptake per crop organ kg ha-1 d-1*/
    if (Total_N_demand > tiny)
    {
        Crop->N_rt.Uptake_lv = (Crop->N_rt.Demand_lv / Total_N_demand) * (Crop->N_rt.Uptake + N_Fix_rt);
        Crop->N_rt.Uptake_st = (Crop->N_rt.Demand_st / Total_N_demand) * (Crop->N_rt.Uptake + N_Fix_rt);
        Crop->N_rt.Uptake_ro = (Crop->N_rt.Demand_ro / Total_N_demand) * (Crop->N_rt.Uptake + N_Fix_rt);
    }
    else
    {
        Crop->N_rt.Uptake_lv = 0.;
        Crop->N_rt.Uptake_st = 0.;
        Crop->N_rt.Uptake_ro = 0.;  
    }
    
    /* P uptake per crop organ kg ha-1 d-1 */
    if (Total_P_demand > tiny)
    {
        Crop->P_rt.Uptake_lv = (Crop->P_rt.Demand_lv / Total_P_demand) * Crop->P_rt.Uptake;
        Crop->P_rt.Uptake_st = (Crop->P_rt.Demand_st / Total_P_demand) * Crop->P_rt.Uptake;
        Crop->P_rt.Uptake_ro = (Crop->P_rt.Demand_ro / Total_P_demand) * Crop->P_rt.Uptake; 
    }
    else
    {
        Crop->P_rt.Uptake_lv = 0.;
        Crop->P_rt.Uptake_st = 0.;
        Crop->P_rt.Uptake_ro = 0.;         
    }
    
   /* K uptake per crop organ kg ha-1 d-1*/
    if (Total_K_demand > tiny)
    {
        Crop->K_rt.Uptake_lv = (Crop->K_rt.Demand_lv / Total_K_demand) * Crop->K_rt.Uptake;
        Crop->K_rt.Uptake_st = (Crop->K_rt.Demand_st / Total_K_demand) * Crop->K_rt.Uptake;
        Crop->K_rt.Uptake_ro = (Crop->K_rt.Demand_ro / Total_K_demand) * Crop->K_rt.Uptake;   
    }
    else
    {
        Crop->K_rt.Uptake_lv = 0.;
        Crop->K_rt.Uptake_st = 0.;
        Crop->K_rt.Uptake_ro = 0.;          
    }
}    