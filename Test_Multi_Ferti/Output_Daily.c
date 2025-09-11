#include <stdio.h>
#include <stdlib.h>
#include <math.h>
#include "extern.h"
#include "wofost.h"

void header_DO(FILE *fp_do)
{
    fprintf(fp_do,"Lat,Lon,Year,Day,Dev_Stage,Demand_grain,Max_P_demand_lv,Max_P_demand_st,Max_P_demand_ro,st_lv,st_st,st_ro,Transpiration,EvaWater,EvaSoil,SoilMoisture,SurfaceRunoff,SubsurfaceRunoff,Percolation,TSMD,Fertilization,N_demand,P_demand,N_Uptake,P_Uptake,Lpool,Spool,Prepool,P_avail,P_Surf,P_Sub,P_Leaching,cPi,RootDepth\n");
}

void Output_Daily(FILE *fp_do)
{      
         fprintf(fp_do,"%7.2f,%7.2f,%4d,%3d," // Lat, Lon, MeteoYear, MeteoDay
                "%4.2f,%4.2f,"    // Crop stage
                "%4.4f,%4.4f,%4.4f,%4.4f,%4.4f,%4.4f,"             // For checking N, P demand
                "%4.2f,%4.2f,%4.2f,%4.2f,%4.2f,%4.2f,%4.2f,%4.2f," // Water balance
                "%2d,"           //If fertilizer is applied or not
                "%4.2f,%4.2f,"   //N,P demand
                "%4.2f,%4.2f,"   //N,P uptake
                "%4.3f,%4.3f,%4.3f,%4.3f,"  //Soil P pools + availability
                "%4.3f,%4.3f,%4.3f,%4.3f,%4.3f\n",  //P losses
                Latitude[Lat],
                Longitude[Lon],
                MeteoYear[Day],
                MeteoDay[Day],
                Crop->st.Development,
                Crop->P_rt.Demand_so,
                Crop->P_st.Max_lv,
                Crop->P_st.Max_st,
                Crop->P_st.Max_ro,
                Crop->P_st.leaves,
                Crop->P_st.stems,
                Crop->P_st.roots,
                WatBal->rt.Transpiration,
                WatBal->rt.EvapWater,
                WatBal->rt.EvapSoil,
                WatBal->st.Moisture,
                WatBal->rt.Runoff,
                WatBal->rt.Loss,
                WatBal->rt.Percolation,
                WatBal->st.TSMD,
                NPC->Fertilization,
                Crop->N_rt.Demand_lv + Crop->N_rt.Demand_st + Crop->N_rt.Demand_ro,
                Crop->P_rt.Demand_lv + Crop->P_rt.Demand_st + Crop->P_rt.Demand_ro,
                Crop->N_rt.Uptake,
                Crop->P_rt.Uptake,
                NPC->p_st.LabileP,
                NPC->p_st.StableP,
                NPC->p_st.PrecP,
                NPC->st_P_avail,
                NPC->p_rt.PSurfRunoff,
                NPC->p_rt.PSubRunoff,
                NPC->p_rt.PLeaching,
                NPC->p_st.cP_inorg,
                Crop->st.RootDepth);
}