#!/bin/bash
#-----------------------------Mail address-----------------------------
#SBATCH --mail-user=yixuan.zhou@wur.nl
#SBATCH --mail-type=FAIL
#-----------------------------Output files-----------------------------
#SBATCH --output=HPC_Report/output_%j.txt
#SBATCH --error=HPC_Report/error_output_%j.txt
#-----------------------------Other information------------------------

#-----------------------------Required resources-----------------------
#SBATCH --time=200
#SBATCH --mem=250000

#-----------------------------Environment, Operations and Job steps----
#load modules
module load netcdf
#----------------------------Run WOFOST simulations-----------------------
# echo "Current directory: $(pwd)"

# # # ====================== Maize
./wofost-NP-maize red_sus_list_Yangtze_maize_Inc_prop.txt meteolist_WFDE5_Yangtze_maize.txt redfertlist_Yangtze_maize_Inc_prop.txt susirrilist_Yangtze_maize.txt
./wofost-NP-maize red_sus_list_Rhine_maize_Inc_prop.txt meteolist_WFDE5_Rhine_maize.txt redfertlist_Rhine_maize_Inc_prop.txt susirrilist_Rhine_maize.txt
./wofost-NP-maize red_sus_list_Indus_maize_Inc_prop.txt meteolist_WFDE5_Indus_maize.txt redfertlist_Indus_maize_Inc_prop.txt susirrilist_Indus_maize.txt
./wofost-NP-maize red_sus_list_LaPlata_maize_Inc_prop.txt meteolist_WFDE5_LaPlata_maize.txt redfertlist_LaPlata_maize_Inc_prop.txt susirrilist_LaPlata_maize.txt

# # ======================= Rice
./wofost-NP-rice red_sus_list_Indus_mainrice_Inc_prop.txt meteolist_WFDE5_Indus_mainrice.txt redfertlist_Indus_mainrice_Inc_prop.txt susirrilist_Indus_mainrice.txt
./wofost-NP-rice red_sus_list_Yangtze_mainrice_Inc_prop.txt meteolist_WFDE5_Yangtze_mainrice.txt redfertlist_Yangtze_mainrice_Inc_prop.txt susirrilist_Yangtze_mainrice.txt
./wofost-NP-rice red_sus_list_Yangtze_secondrice_Inc_prop.txt meteolist_WFDE5_Yangtze_secondrice.txt redfertlist_Yangtze_secondrice_Inc_prop.txt susirrilist_Yangtze_secondrice.txt
./wofost-NP-rice red_sus_list_LaPlata_mainrice_Inc_prop.txt meteolist_WFDE5_LaPlata_mainrice.txt redfertlist_LaPlata_mainrice_Inc_prop.txt susirrilist_LaPlata_mainrice.txt

# # ======================= Soybean
./wofost-NP-soybean red_sus_list_Yangtze_soybean_Inc_prop.txt meteolist_WFDE5_Yangtze_soybean.txt redfertlist_Yangtze_soybean_Inc_prop.txt susirrilist_Yangtze_soybean.txt
./wofost-NP-soybean red_sus_list_LaPlata_soybean_Inc_prop.txt meteolist_WFDE5_LaPlata_soybean.txt redfertlist_LaPlata_soybean_Inc_prop.txt susirrilist_LaPlata_soybean.txt

# # ======================= Wheat
./wofost-NP-wheat red_sus_list_Rhine_winterwheat_Inc_prop.txt meteolist_WFDE5_Rhine_winterwheat.txt redfertlist_Rhine_winterwheat_Inc_prop.txt susirrilist_Rhine_winterwheat.txt
./wofost-NP-wheat red_sus_list_Indus_winterwheat_Inc_prop.txt meteolist_WFDE5_Indus_winterwheat.txt redfertlist_Indus_winterwheat_Inc_prop.txt susirrilist_Indus_winterwheat.txt
./wofost-NP-wheat red_sus_list_Yangtze_winterwheat_Inc_prop.txt meteolist_WFDE5_Yangtze_winterwheat.txt redfertlist_Yangtze_winterwheat_Inc_prop.txt susirrilist_Yangtze_winterwheat.txt
./wofost-NP-wheat red_sus_list_LaPlata_winterwheat_Inc_prop.txt meteolist_WFDE5_LaPlata_winterwheat.txt redfertlist_LaPlata_winterwheat_Inc_prop.txt susirrilist_LaPlata_winterwheat.txt


# # # # ====================== Maize
# ./wofost-NP-maize red_sus_list_Yangtze_maize_Inc_02.txt meteolist_WFDE5_Yangtze_maize.txt redfertlist_Yangtze_maize_Inc_02.txt susirrilist_Yangtze_maize.txt
# ./wofost-NP-maize red_sus_list_Rhine_maize_Inc_02.txt meteolist_WFDE5_Rhine_maize.txt redfertlist_Rhine_maize_Inc_02.txt susirrilist_Rhine_maize.txt
# ./wofost-NP-maize red_sus_list_Indus_maize_Inc_02.txt meteolist_WFDE5_Indus_maize.txt redfertlist_Indus_maize_Inc_02.txt susirrilist_Indus_maize.txt
# ./wofost-NP-maize red_sus_list_LaPlata_maize_Inc_02.txt meteolist_WFDE5_LaPlata_maize.txt redfertlist_LaPlata_maize_Inc_02.txt susirrilist_LaPlata_maize.txt

# # # ======================= Rice
# ./wofost-NP-rice red_sus_list_Indus_mainrice_Inc_02.txt meteolist_WFDE5_Indus_mainrice.txt redfertlist_Indus_mainrice_Inc_02.txt susirrilist_Indus_mainrice.txt
# ./wofost-NP-rice red_sus_list_Yangtze_mainrice_Inc_02.txt meteolist_WFDE5_Yangtze_mainrice.txt redfertlist_Yangtze_mainrice_Inc_02.txt susirrilist_Yangtze_mainrice.txt
# ./wofost-NP-rice red_sus_list_Yangtze_secondrice_Inc_02.txt meteolist_WFDE5_Yangtze_secondrice.txt redfertlist_Yangtze_secondrice_Inc_02.txt susirrilist_Yangtze_secondrice.txt
# ./wofost-NP-rice red_sus_list_LaPlata_mainrice_Inc_02.txt meteolist_WFDE5_LaPlata_mainrice.txt redfertlist_LaPlata_mainrice_Inc_02.txt susirrilist_LaPlata_mainrice.txt

# # # ======================= Soybean
# ./wofost-NP-soybean red_sus_list_Yangtze_soybean_Inc_02.txt meteolist_WFDE5_Yangtze_soybean.txt redfertlist_Yangtze_soybean_Inc_02.txt susirrilist_Yangtze_soybean.txt
# ./wofost-NP-soybean red_sus_list_LaPlata_soybean_Inc_02.txt meteolist_WFDE5_LaPlata_soybean.txt redfertlist_LaPlata_soybean_Inc_02.txt susirrilist_LaPlata_soybean.txt

# # # ======================= Wheat
# ./wofost-NP-wheat red_sus_list_Rhine_winterwheat_Inc_02.txt meteolist_WFDE5_Rhine_winterwheat.txt redfertlist_Rhine_winterwheat_Inc_02.txt susirrilist_Rhine_winterwheat.txt
# ./wofost-NP-wheat red_sus_list_Indus_winterwheat_Inc_02.txt meteolist_WFDE5_Indus_winterwheat.txt redfertlist_Indus_winterwheat_Inc_02.txt susirrilist_Indus_winterwheat.txt
# ./wofost-NP-wheat red_sus_list_Yangtze_winterwheat_Inc_02.txt meteolist_WFDE5_Yangtze_winterwheat.txt redfertlist_Yangtze_winterwheat_Inc_02.txt susirrilist_Yangtze_winterwheat.txt
# ./wofost-NP-wheat red_sus_list_LaPlata_winterwheat_Inc_02.txt meteolist_WFDE5_LaPlata_winterwheat.txt redfertlist_LaPlata_winterwheat_Inc_02.txt susirrilist_LaPlata_winterwheat.txt




# # # # ====================== Maize
# ./wofost-NP-maize red_sus_list_Yangtze_maize_Inc_04.txt meteolist_WFDE5_Yangtze_maize.txt redfertlist_Yangtze_maize_Inc_04.txt susirrilist_Yangtze_maize.txt
# ./wofost-NP-maize red_sus_list_Rhine_maize_Inc_04.txt meteolist_WFDE5_Rhine_maize.txt redfertlist_Rhine_maize_Inc_04.txt susirrilist_Rhine_maize.txt
# ./wofost-NP-maize red_sus_list_Indus_maize_Inc_04.txt meteolist_WFDE5_Indus_maize.txt redfertlist_Indus_maize_Inc_04.txt susirrilist_Indus_maize.txt
# ./wofost-NP-maize red_sus_list_LaPlata_maize_Inc_04.txt meteolist_WFDE5_LaPlata_maize.txt redfertlist_LaPlata_maize_Inc_04.txt susirrilist_LaPlata_maize.txt

# # # ======================= Rice
# ./wofost-NP-rice red_sus_list_Indus_mainrice_Inc_04.txt meteolist_WFDE5_Indus_mainrice.txt redfertlist_Indus_mainrice_Inc_04.txt susirrilist_Indus_mainrice.txt
# ./wofost-NP-rice red_sus_list_Yangtze_mainrice_Inc_04.txt meteolist_WFDE5_Yangtze_mainrice.txt redfertlist_Yangtze_mainrice_Inc_04.txt susirrilist_Yangtze_mainrice.txt
# ./wofost-NP-rice red_sus_list_Yangtze_secondrice_Inc_04.txt meteolist_WFDE5_Yangtze_secondrice.txt redfertlist_Yangtze_secondrice_Inc_04.txt susirrilist_Yangtze_secondrice.txt
# ./wofost-NP-rice red_sus_list_LaPlata_mainrice_Inc_04.txt meteolist_WFDE5_LaPlata_mainrice.txt redfertlist_LaPlata_mainrice_Inc_04.txt susirrilist_LaPlata_mainrice.txt

# # # ======================= Soybean
# ./wofost-NP-soybean red_sus_list_Yangtze_soybean_Inc_04.txt meteolist_WFDE5_Yangtze_soybean.txt redfertlist_Yangtze_soybean_Inc_04.txt susirrilist_Yangtze_soybean.txt
# ./wofost-NP-soybean red_sus_list_LaPlata_soybean_Inc_04.txt meteolist_WFDE5_LaPlata_soybean.txt redfertlist_LaPlata_soybean_Inc_04.txt susirrilist_LaPlata_soybean.txt

# # # ======================= Wheat
# ./wofost-NP-wheat red_sus_list_Rhine_winterwheat_Inc_04.txt meteolist_WFDE5_Rhine_winterwheat.txt redfertlist_Rhine_winterwheat_Inc_04.txt susirrilist_Rhine_winterwheat.txt
# ./wofost-NP-wheat red_sus_list_Indus_winterwheat_Inc_04.txt meteolist_WFDE5_Indus_winterwheat.txt redfertlist_Indus_winterwheat_Inc_04.txt susirrilist_Indus_winterwheat.txt
# ./wofost-NP-wheat red_sus_list_Yangtze_winterwheat_Inc_04.txt meteolist_WFDE5_Yangtze_winterwheat.txt redfertlist_Yangtze_winterwheat_Inc_04.txt susirrilist_Yangtze_winterwheat.txt
# ./wofost-NP-wheat red_sus_list_LaPlata_winterwheat_Inc_04.txt meteolist_WFDE5_LaPlata_winterwheat.txt redfertlist_LaPlata_winterwheat_Inc_04.txt susirrilist_LaPlata_winterwheat.txt


# # # # ====================== Maize
# ./wofost-NP-maize red_sus_list_Yangtze_maize_Inc_06.txt meteolist_WFDE5_Yangtze_maize.txt redfertlist_Yangtze_maize_Inc_06.txt susirrilist_Yangtze_maize.txt
# ./wofost-NP-maize red_sus_list_Rhine_maize_Inc_06.txt meteolist_WFDE5_Rhine_maize.txt redfertlist_Rhine_maize_Inc_06.txt susirrilist_Rhine_maize.txt
# ./wofost-NP-maize red_sus_list_Indus_maize_Inc_06.txt meteolist_WFDE5_Indus_maize.txt redfertlist_Indus_maize_Inc_06.txt susirrilist_Indus_maize.txt
# ./wofost-NP-maize red_sus_list_LaPlata_maize_Inc_06.txt meteolist_WFDE5_LaPlata_maize.txt redfertlist_LaPlata_maize_Inc_06.txt susirrilist_LaPlata_maize.txt

# # # ======================= Rice
# ./wofost-NP-rice red_sus_list_Indus_mainrice_Inc_06.txt meteolist_WFDE5_Indus_mainrice.txt redfertlist_Indus_mainrice_Inc_06.txt susirrilist_Indus_mainrice.txt
# ./wofost-NP-rice red_sus_list_Yangtze_mainrice_Inc_06.txt meteolist_WFDE5_Yangtze_mainrice.txt redfertlist_Yangtze_mainrice_Inc_06.txt susirrilist_Yangtze_mainrice.txt
# ./wofost-NP-rice red_sus_list_Yangtze_secondrice_Inc_06.txt meteolist_WFDE5_Yangtze_secondrice.txt redfertlist_Yangtze_secondrice_Inc_06.txt susirrilist_Yangtze_secondrice.txt
# ./wofost-NP-rice red_sus_list_LaPlata_mainrice_Inc_06.txt meteolist_WFDE5_LaPlata_mainrice.txt redfertlist_LaPlata_mainrice_Inc_06.txt susirrilist_LaPlata_mainrice.txt

# # # ======================= Soybean
# ./wofost-NP-soybean red_sus_list_Yangtze_soybean_Inc_06.txt meteolist_WFDE5_Yangtze_soybean.txt redfertlist_Yangtze_soybean_Inc_06.txt susirrilist_Yangtze_soybean.txt
# ./wofost-NP-soybean red_sus_list_LaPlata_soybean_Inc_06.txt meteolist_WFDE5_LaPlata_soybean.txt redfertlist_LaPlata_soybean_Inc_06.txt susirrilist_LaPlata_soybean.txt

# # # ======================= Wheat
# ./wofost-NP-wheat red_sus_list_Rhine_winterwheat_Inc_06.txt meteolist_WFDE5_Rhine_winterwheat.txt redfertlist_Rhine_winterwheat_Inc_06.txt susirrilist_Rhine_winterwheat.txt
# ./wofost-NP-wheat red_sus_list_Indus_winterwheat_Inc_06.txt meteolist_WFDE5_Indus_winterwheat.txt redfertlist_Indus_winterwheat_Inc_06.txt susirrilist_Indus_winterwheat.txt
# ./wofost-NP-wheat red_sus_list_Yangtze_winterwheat_Inc_06.txt meteolist_WFDE5_Yangtze_winterwheat.txt redfertlist_Yangtze_winterwheat_Inc_06.txt susirrilist_Yangtze_winterwheat.txt
# ./wofost-NP-wheat red_sus_list_LaPlata_winterwheat_Inc_06.txt meteolist_WFDE5_LaPlata_winterwheat.txt redfertlist_LaPlata_winterwheat_Inc_06.txt susirrilist_LaPlata_winterwheat.txt



# # # # ====================== Maize
# ./wofost-NP-maize red_sus_list_Yangtze_maize_Inc_08.txt meteolist_WFDE5_Yangtze_maize.txt redfertlist_Yangtze_maize_Inc_08.txt susirrilist_Yangtze_maize.txt
# ./wofost-NP-maize red_sus_list_Rhine_maize_Inc_08.txt meteolist_WFDE5_Rhine_maize.txt redfertlist_Rhine_maize_Inc_08.txt susirrilist_Rhine_maize.txt
# ./wofost-NP-maize red_sus_list_Indus_maize_Inc_08.txt meteolist_WFDE5_Indus_maize.txt redfertlist_Indus_maize_Inc_08.txt susirrilist_Indus_maize.txt
# ./wofost-NP-maize red_sus_list_LaPlata_maize_Inc_08.txt meteolist_WFDE5_LaPlata_maize.txt redfertlist_LaPlata_maize_Inc_08.txt susirrilist_LaPlata_maize.txt

# # # ======================= Rice
# ./wofost-NP-rice red_sus_list_Indus_mainrice_Inc_08.txt meteolist_WFDE5_Indus_mainrice.txt redfertlist_Indus_mainrice_Inc_08.txt susirrilist_Indus_mainrice.txt
# ./wofost-NP-rice red_sus_list_Yangtze_mainrice_Inc_08.txt meteolist_WFDE5_Yangtze_mainrice.txt redfertlist_Yangtze_mainrice_Inc_08.txt susirrilist_Yangtze_mainrice.txt
# ./wofost-NP-rice red_sus_list_Yangtze_secondrice_Inc_08.txt meteolist_WFDE5_Yangtze_secondrice.txt redfertlist_Yangtze_secondrice_Inc_08.txt susirrilist_Yangtze_secondrice.txt
# ./wofost-NP-rice red_sus_list_LaPlata_mainrice_Inc_08.txt meteolist_WFDE5_LaPlata_mainrice.txt redfertlist_LaPlata_mainrice_Inc_08.txt susirrilist_LaPlata_mainrice.txt

# # # ======================= Soybean
# ./wofost-NP-soybean red_sus_list_Yangtze_soybean_Inc_08.txt meteolist_WFDE5_Yangtze_soybean.txt redfertlist_Yangtze_soybean_Inc_08.txt susirrilist_Yangtze_soybean.txt
# ./wofost-NP-soybean red_sus_list_LaPlata_soybean_Inc_08.txt meteolist_WFDE5_LaPlata_soybean.txt redfertlist_LaPlata_soybean_Inc_08.txt susirrilist_LaPlata_soybean.txt

# # # ======================= Wheat
# ./wofost-NP-wheat red_sus_list_Rhine_winterwheat_Inc_08.txt meteolist_WFDE5_Rhine_winterwheat.txt redfertlist_Rhine_winterwheat_Inc_08.txt susirrilist_Rhine_winterwheat.txt
# ./wofost-NP-wheat red_sus_list_Indus_winterwheat_Inc_08.txt meteolist_WFDE5_Indus_winterwheat.txt redfertlist_Indus_winterwheat_Inc_08.txt susirrilist_Indus_winterwheat.txt
# ./wofost-NP-wheat red_sus_list_Yangtze_winterwheat_Inc_08.txt meteolist_WFDE5_Yangtze_winterwheat.txt redfertlist_Yangtze_winterwheat_Inc_08.txt susirrilist_Yangtze_winterwheat.txt
# ./wofost-NP-wheat red_sus_list_LaPlata_winterwheat_Inc_08.txt meteolist_WFDE5_LaPlata_winterwheat.txt redfertlist_LaPlata_winterwheat_Inc_08.txt susirrilist_LaPlata_winterwheat.txt




# # # # ====================== Maize
# ./wofost-NP-maize red_sus_list_Yangtze_maize_Inc_10.txt meteolist_WFDE5_Yangtze_maize.txt redfertlist_Yangtze_maize_Inc_10.txt susirrilist_Yangtze_maize.txt
# ./wofost-NP-maize red_sus_list_Rhine_maize_Inc_10.txt meteolist_WFDE5_Rhine_maize.txt redfertlist_Rhine_maize_Inc_10.txt susirrilist_Rhine_maize.txt
# ./wofost-NP-maize red_sus_list_Indus_maize_Inc_10.txt meteolist_WFDE5_Indus_maize.txt redfertlist_Indus_maize_Inc_10.txt susirrilist_Indus_maize.txt
# ./wofost-NP-maize red_sus_list_LaPlata_maize_Inc_10.txt meteolist_WFDE5_LaPlata_maize.txt redfertlist_LaPlata_maize_Inc_10.txt susirrilist_LaPlata_maize.txt

# # # ======================= Rice
# ./wofost-NP-rice red_sus_list_Indus_mainrice_Inc_10.txt meteolist_WFDE5_Indus_mainrice.txt redfertlist_Indus_mainrice_Inc_10.txt susirrilist_Indus_mainrice.txt
# ./wofost-NP-rice red_sus_list_Yangtze_mainrice_Inc_10.txt meteolist_WFDE5_Yangtze_mainrice.txt redfertlist_Yangtze_mainrice_Inc_10.txt susirrilist_Yangtze_mainrice.txt
# ./wofost-NP-rice red_sus_list_Yangtze_secondrice_Inc_10.txt meteolist_WFDE5_Yangtze_secondrice.txt redfertlist_Yangtze_secondrice_Inc_10.txt susirrilist_Yangtze_secondrice.txt
# ./wofost-NP-rice red_sus_list_LaPlata_mainrice_Inc_10.txt meteolist_WFDE5_LaPlata_mainrice.txt redfertlist_LaPlata_mainrice_Inc_10.txt susirrilist_LaPlata_mainrice.txt

# # # ======================= Soybean
# ./wofost-NP-soybean red_sus_list_Yangtze_soybean_Inc_10.txt meteolist_WFDE5_Yangtze_soybean.txt redfertlist_Yangtze_soybean_Inc_10.txt susirrilist_Yangtze_soybean.txt
# ./wofost-NP-soybean red_sus_list_LaPlata_soybean_Inc_10.txt meteolist_WFDE5_LaPlata_soybean.txt redfertlist_LaPlata_soybean_Inc_10.txt susirrilist_LaPlata_soybean.txt

# # # ======================= Wheat
# ./wofost-NP-wheat red_sus_list_Rhine_winterwheat_Inc_10.txt meteolist_WFDE5_Rhine_winterwheat.txt redfertlist_Rhine_winterwheat_Inc_10.txt susirrilist_Rhine_winterwheat.txt
# ./wofost-NP-wheat red_sus_list_Indus_winterwheat_Inc_10.txt meteolist_WFDE5_Indus_winterwheat.txt redfertlist_Indus_winterwheat_Inc_10.txt susirrilist_Indus_winterwheat.txt
# ./wofost-NP-wheat red_sus_list_Yangtze_winterwheat_Inc_10.txt meteolist_WFDE5_Yangtze_winterwheat.txt redfertlist_Yangtze_winterwheat_Inc_10.txt susirrilist_Yangtze_winterwheat.txt
# ./wofost-NP-wheat red_sus_list_LaPlata_winterwheat_Inc_10.txt meteolist_WFDE5_LaPlata_winterwheat.txt redfertlist_LaPlata_winterwheat_Inc_10.txt susirrilist_LaPlata_winterwheat.txt



# # # # ====================== Maize
# ./wofost-NP-maize red_sus_list_Yangtze_maize_Inc_12.txt meteolist_WFDE5_Yangtze_maize.txt redfertlist_Yangtze_maize_Inc_12.txt susirrilist_Yangtze_maize.txt
# ./wofost-NP-maize red_sus_list_Rhine_maize_Inc_12.txt meteolist_WFDE5_Rhine_maize.txt redfertlist_Rhine_maize_Inc_12.txt susirrilist_Rhine_maize.txt
# ./wofost-NP-maize red_sus_list_Indus_maize_Inc_12.txt meteolist_WFDE5_Indus_maize.txt redfertlist_Indus_maize_Inc_12.txt susirrilist_Indus_maize.txt
# ./wofost-NP-maize red_sus_list_LaPlata_maize_Inc_12.txt meteolist_WFDE5_LaPlata_maize.txt redfertlist_LaPlata_maize_Inc_12.txt susirrilist_LaPlata_maize.txt

# # # ======================= Rice
# ./wofost-NP-rice red_sus_list_Indus_mainrice_Inc_12.txt meteolist_WFDE5_Indus_mainrice.txt redfertlist_Indus_mainrice_Inc_12.txt susirrilist_Indus_mainrice.txt
# ./wofost-NP-rice red_sus_list_Yangtze_mainrice_Inc_12.txt meteolist_WFDE5_Yangtze_mainrice.txt redfertlist_Yangtze_mainrice_Inc_12.txt susirrilist_Yangtze_mainrice.txt
# ./wofost-NP-rice red_sus_list_Yangtze_secondrice_Inc_12.txt meteolist_WFDE5_Yangtze_secondrice.txt redfertlist_Yangtze_secondrice_Inc_12.txt susirrilist_Yangtze_secondrice.txt
# ./wofost-NP-rice red_sus_list_LaPlata_mainrice_Inc_12.txt meteolist_WFDE5_LaPlata_mainrice.txt redfertlist_LaPlata_mainrice_Inc_12.txt susirrilist_LaPlata_mainrice.txt

# # # ======================= Soybean
# ./wofost-NP-soybean red_sus_list_Yangtze_soybean_Inc_12.txt meteolist_WFDE5_Yangtze_soybean.txt redfertlist_Yangtze_soybean_Inc_12.txt susirrilist_Yangtze_soybean.txt
# ./wofost-NP-soybean red_sus_list_LaPlata_soybean_Inc_12.txt meteolist_WFDE5_LaPlata_soybean.txt redfertlist_LaPlata_soybean_Inc_12.txt susirrilist_LaPlata_soybean.txt

# # # ======================= Wheat
# ./wofost-NP-wheat red_sus_list_Rhine_winterwheat_Inc_12.txt meteolist_WFDE5_Rhine_winterwheat.txt redfertlist_Rhine_winterwheat_Inc_12.txt susirrilist_Rhine_winterwheat.txt
# ./wofost-NP-wheat red_sus_list_Indus_winterwheat_Inc_12.txt meteolist_WFDE5_Indus_winterwheat.txt redfertlist_Indus_winterwheat_Inc_12.txt susirrilist_Indus_winterwheat.txt
# ./wofost-NP-wheat red_sus_list_Yangtze_winterwheat_Inc_12.txt meteolist_WFDE5_Yangtze_winterwheat.txt redfertlist_Yangtze_winterwheat_Inc_12.txt susirrilist_Yangtze_winterwheat.txt
# ./wofost-NP-wheat red_sus_list_LaPlata_winterwheat_Inc_12.txt meteolist_WFDE5_LaPlata_winterwheat.txt redfertlist_LaPlata_winterwheat_Inc_12.txt susirrilist_LaPlata_winterwheat.txt



# # # # ====================== Maize
# ./wofost-NP-maize red_sus_list_Yangtze_maize_Inc_14.txt meteolist_WFDE5_Yangtze_maize.txt redfertlist_Yangtze_maize_Inc_14.txt susirrilist_Yangtze_maize.txt
# ./wofost-NP-maize red_sus_list_Rhine_maize_Inc_14.txt meteolist_WFDE5_Rhine_maize.txt redfertlist_Rhine_maize_Inc_14.txt susirrilist_Rhine_maize.txt
# ./wofost-NP-maize red_sus_list_Indus_maize_Inc_14.txt meteolist_WFDE5_Indus_maize.txt redfertlist_Indus_maize_Inc_14.txt susirrilist_Indus_maize.txt
# ./wofost-NP-maize red_sus_list_LaPlata_maize_Inc_14.txt meteolist_WFDE5_LaPlata_maize.txt redfertlist_LaPlata_maize_Inc_14.txt susirrilist_LaPlata_maize.txt

# # # ======================= Rice
# ./wofost-NP-rice red_sus_list_Indus_mainrice_Inc_14.txt meteolist_WFDE5_Indus_mainrice.txt redfertlist_Indus_mainrice_Inc_14.txt susirrilist_Indus_mainrice.txt
# ./wofost-NP-rice red_sus_list_Yangtze_mainrice_Inc_14.txt meteolist_WFDE5_Yangtze_mainrice.txt redfertlist_Yangtze_mainrice_Inc_14.txt susirrilist_Yangtze_mainrice.txt
# ./wofost-NP-rice red_sus_list_Yangtze_secondrice_Inc_14.txt meteolist_WFDE5_Yangtze_secondrice.txt redfertlist_Yangtze_secondrice_Inc_14.txt susirrilist_Yangtze_secondrice.txt
# ./wofost-NP-rice red_sus_list_LaPlata_mainrice_Inc_14.txt meteolist_WFDE5_LaPlata_mainrice.txt redfertlist_LaPlata_mainrice_Inc_14.txt susirrilist_LaPlata_mainrice.txt

# # # ======================= Soybean
# ./wofost-NP-soybean red_sus_list_Yangtze_soybean_Inc_14.txt meteolist_WFDE5_Yangtze_soybean.txt redfertlist_Yangtze_soybean_Inc_14.txt susirrilist_Yangtze_soybean.txt
# ./wofost-NP-soybean red_sus_list_LaPlata_soybean_Inc_14.txt meteolist_WFDE5_LaPlata_soybean.txt redfertlist_LaPlata_soybean_Inc_14.txt susirrilist_LaPlata_soybean.txt

# # # ======================= Wheat
# ./wofost-NP-wheat red_sus_list_Rhine_winterwheat_Inc_14.txt meteolist_WFDE5_Rhine_winterwheat.txt redfertlist_Rhine_winterwheat_Inc_14.txt susirrilist_Rhine_winterwheat.txt
# ./wofost-NP-wheat red_sus_list_Indus_winterwheat_Inc_14.txt meteolist_WFDE5_Indus_winterwheat.txt redfertlist_Indus_winterwheat_Inc_14.txt susirrilist_Indus_winterwheat.txt
# ./wofost-NP-wheat red_sus_list_Yangtze_winterwheat_Inc_14.txt meteolist_WFDE5_Yangtze_winterwheat.txt redfertlist_Yangtze_winterwheat_Inc_14.txt susirrilist_Yangtze_winterwheat.txt
# ./wofost-NP-wheat red_sus_list_LaPlata_winterwheat_Inc_14.txt meteolist_WFDE5_LaPlata_winterwheat.txt redfertlist_LaPlata_winterwheat_Inc_14.txt susirrilist_LaPlata_winterwheat.txt