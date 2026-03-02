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


# #  ======================= Maize
./wofost-NP-maize-Rainfed red_sus_list_Yangtze_maize_rainfed_Inc_prop.txt meteolist_WFDE5_Yangtze_maize.txt redfertlist_Yangtze_maize_rainfed_Inc_prop.txt irrilist_Yangtze_maize.txt
./wofost-NP-maize-Rainfed red_sus_list_Rhine_maize_rainfed_Inc_prop.txt meteolist_WFDE5_Rhine_maize.txt redfertlist_Rhine_maize_rainfed_Inc_prop.txt irrilist_Rhine_maize.txt
./wofost-NP-maize-Rainfed red_sus_list_Indus_maize_rainfed_Inc_prop.txt meteolist_WFDE5_Indus_maize.txt redfertlist_Indus_maize_rainfed_Inc_prop.txt irrilist_Indus_maize.txt
./wofost-NP-maize-Rainfed red_sus_list_LaPlata_maize_rainfed_Inc_prop.txt meteolist_WFDE5_LaPlata_maize.txt redfertlist_LaPlata_maize_rainfed_Inc_prop.txt irrilist_LaPlata_maize.txt

# ======================= Rice
./wofost-NP-rice-Rainfed red_sus_list_Indus_mainrice_rainfed_Inc_prop.txt meteolist_WFDE5_Indus_mainrice.txt redfertlist_Indus_mainrice_rainfed_Inc_prop.txt irrilist_Indus_mainrice.txt
./wofost-NP-rice-Rainfed red_sus_list_Yangtze_mainrice_rainfed_Inc_prop.txt meteolist_WFDE5_Yangtze_mainrice.txt redfertlist_Yangtze_mainrice_rainfed_Inc_prop.txt irrilist_Yangtze_mainrice.txt
./wofost-NP-rice-Rainfed red_sus_list_Yangtze_secondrice_rainfed_Inc_prop.txt meteolist_WFDE5_Yangtze_secondrice.txt redfertlist_Yangtze_secondrice_rainfed_Inc_prop.txt irrilist_Yangtze_secondrice.txt
./wofost-NP-rice-Rainfed red_sus_list_LaPlata_mainrice_rainfed_Inc_prop.txt meteolist_WFDE5_LaPlata_mainrice.txt redfertlist_LaPlata_mainrice_rainfed_Inc_prop.txt irrilist_LaPlata_mainrice.txt

# ======================= Soybean
./wofost-NP-soybean-Rainfed red_sus_list_Yangtze_soybean_rainfed_Inc_prop.txt meteolist_WFDE5_Yangtze_soybean.txt redfertlist_Yangtze_soybean_rainfed_Inc_prop.txt irrilist_Yangtze_soybean.txt
./wofost-NP-soybean-Rainfed red_sus_list_LaPlata_soybean_rainfed_Inc_prop.txt meteolist_WFDE5_LaPlata_soybean.txt redfertlist_LaPlata_soybean_rainfed_Inc_prop.txt irrilist_LaPlata_soybean.txt

# ======================= Wheat
./wofost-NP-wheat-Rainfed red_sus_list_Rhine_winterwheat_rainfed_Inc_prop.txt meteolist_WFDE5_Rhine_winterwheat.txt redfertlist_Rhine_winterwheat_rainfed_Inc_prop.txt irrilist_Rhine_winterwheat.txt
./wofost-NP-wheat-Rainfed red_sus_list_Indus_winterwheat_rainfed_Inc_prop.txt meteolist_WFDE5_Indus_winterwheat.txt redfertlist_Indus_winterwheat_rainfed_Inc_prop.txt irrilist_Indus_winterwheat.txt
./wofost-NP-wheat-Rainfed red_sus_list_Yangtze_winterwheat_rainfed_Inc_prop.txt meteolist_WFDE5_Yangtze_winterwheat.txt redfertlist_Yangtze_winterwheat_rainfed_Inc_prop.txt irrilist_Yangtze_winterwheat.txt
./wofost-NP-wheat-Rainfed red_sus_list_LaPlata_winterwheat_rainfed_Inc_prop.txt meteolist_WFDE5_LaPlata_winterwheat.txt redfertlist_LaPlata_winterwheat_rainfed_Inc_prop.txt irrilist_LaPlata_winterwheat.txt



# # #  ======================= Maize
# ./wofost-NP-maize-Rainfed red_sus_list_Yangtze_maize_rainfed_Inc_02.txt meteolist_WFDE5_Yangtze_maize.txt redfertlist_Yangtze_maize_rainfed_Inc_02.txt irrilist_Yangtze_maize.txt
# ./wofost-NP-maize-Rainfed red_sus_list_Rhine_maize_rainfed_Inc_02.txt meteolist_WFDE5_Rhine_maize.txt redfertlist_Rhine_maize_rainfed_Inc_02.txt irrilist_Rhine_maize.txt
# ./wofost-NP-maize-Rainfed red_sus_list_Indus_maize_rainfed_Inc_02.txt meteolist_WFDE5_Indus_maize.txt redfertlist_Indus_maize_rainfed_Inc_02.txt irrilist_Indus_maize.txt
# ./wofost-NP-maize-Rainfed red_sus_list_LaPlata_maize_rainfed_Inc_02.txt meteolist_WFDE5_LaPlata_maize.txt redfertlist_LaPlata_maize_rainfed_Inc_02.txt irrilist_LaPlata_maize.txt

# # ======================= Rice
# ./wofost-NP-rice-Rainfed red_sus_list_Indus_mainrice_rainfed_Inc_02.txt meteolist_WFDE5_Indus_mainrice.txt redfertlist_Indus_mainrice_rainfed_Inc_02.txt irrilist_Indus_mainrice.txt
# ./wofost-NP-rice-Rainfed red_sus_list_Yangtze_mainrice_rainfed_Inc_02.txt meteolist_WFDE5_Yangtze_mainrice.txt redfertlist_Yangtze_mainrice_rainfed_Inc_02.txt irrilist_Yangtze_mainrice.txt
# ./wofost-NP-rice-Rainfed red_sus_list_Yangtze_secondrice_rainfed_Inc_02.txt meteolist_WFDE5_Yangtze_secondrice.txt redfertlist_Yangtze_secondrice_rainfed_Inc_02.txt irrilist_Yangtze_secondrice.txt
# ./wofost-NP-rice-Rainfed red_sus_list_LaPlata_mainrice_rainfed_Inc_02.txt meteolist_WFDE5_LaPlata_mainrice.txt redfertlist_LaPlata_mainrice_rainfed_Inc_02.txt irrilist_LaPlata_mainrice.txt

# # ======================= Soybean
# ./wofost-NP-soybean-Rainfed red_sus_list_Yangtze_soybean_rainfed_Inc_02.txt meteolist_WFDE5_Yangtze_soybean.txt redfertlist_Yangtze_soybean_rainfed_Inc_02.txt irrilist_Yangtze_soybean.txt
# ./wofost-NP-soybean-Rainfed red_sus_list_LaPlata_soybean_rainfed_Inc_02.txt meteolist_WFDE5_LaPlata_soybean.txt redfertlist_LaPlata_soybean_rainfed_Inc_02.txt irrilist_LaPlata_soybean.txt

# # ======================= Wheat
# ./wofost-NP-wheat-Rainfed red_sus_list_Rhine_winterwheat_rainfed_Inc_02.txt meteolist_WFDE5_Rhine_winterwheat.txt redfertlist_Rhine_winterwheat_rainfed_Inc_02.txt irrilist_Rhine_winterwheat.txt
# ./wofost-NP-wheat-Rainfed red_sus_list_Indus_winterwheat_rainfed_Inc_02.txt meteolist_WFDE5_Indus_winterwheat.txt redfertlist_Indus_winterwheat_rainfed_Inc_02.txt irrilist_Indus_winterwheat.txt
# ./wofost-NP-wheat-Rainfed red_sus_list_Yangtze_winterwheat_rainfed_Inc_02.txt meteolist_WFDE5_Yangtze_winterwheat.txt redfertlist_Yangtze_winterwheat_rainfed_Inc_02.txt irrilist_Yangtze_winterwheat.txt
# ./wofost-NP-wheat-Rainfed red_sus_list_LaPlata_winterwheat_rainfed_Inc_02.txt meteolist_WFDE5_LaPlata_winterwheat.txt redfertlist_LaPlata_winterwheat_rainfed_Inc_02.txt irrilist_LaPlata_winterwheat.txt



# # #  ======================= Maize
# ./wofost-NP-maize-Rainfed red_sus_list_Yangtze_maize_rainfed_Inc_04.txt meteolist_WFDE5_Yangtze_maize.txt redfertlist_Yangtze_maize_rainfed_Inc_04.txt irrilist_Yangtze_maize.txt
# ./wofost-NP-maize-Rainfed red_sus_list_Rhine_maize_rainfed_Inc_04.txt meteolist_WFDE5_Rhine_maize.txt redfertlist_Rhine_maize_rainfed_Inc_04.txt irrilist_Rhine_maize.txt
# ./wofost-NP-maize-Rainfed red_sus_list_Indus_maize_rainfed_Inc_04.txt meteolist_WFDE5_Indus_maize.txt redfertlist_Indus_maize_rainfed_Inc_04.txt irrilist_Indus_maize.txt
# ./wofost-NP-maize-Rainfed red_sus_list_LaPlata_maize_rainfed_Inc_04.txt meteolist_WFDE5_LaPlata_maize.txt redfertlist_LaPlata_maize_rainfed_Inc_04.txt irrilist_LaPlata_maize.txt

# # ======================= Rice
# ./wofost-NP-rice-Rainfed red_sus_list_Indus_mainrice_rainfed_Inc_04.txt meteolist_WFDE5_Indus_mainrice.txt redfertlist_Indus_mainrice_rainfed_Inc_04.txt irrilist_Indus_mainrice.txt
# ./wofost-NP-rice-Rainfed red_sus_list_Yangtze_mainrice_rainfed_Inc_04.txt meteolist_WFDE5_Yangtze_mainrice.txt redfertlist_Yangtze_mainrice_rainfed_Inc_04.txt irrilist_Yangtze_mainrice.txt
# ./wofost-NP-rice-Rainfed red_sus_list_Yangtze_secondrice_rainfed_Inc_04.txt meteolist_WFDE5_Yangtze_secondrice.txt redfertlist_Yangtze_secondrice_rainfed_Inc_04.txt irrilist_Yangtze_secondrice.txt
# ./wofost-NP-rice-Rainfed red_sus_list_LaPlata_mainrice_rainfed_Inc_04.txt meteolist_WFDE5_LaPlata_mainrice.txt redfertlist_LaPlata_mainrice_rainfed_Inc_04.txt irrilist_LaPlata_mainrice.txt

# # ======================= Soybean
# ./wofost-NP-soybean-Rainfed red_sus_list_Yangtze_soybean_rainfed_Inc_04.txt meteolist_WFDE5_Yangtze_soybean.txt redfertlist_Yangtze_soybean_rainfed_Inc_04.txt irrilist_Yangtze_soybean.txt
# ./wofost-NP-soybean-Rainfed red_sus_list_LaPlata_soybean_rainfed_Inc_04.txt meteolist_WFDE5_LaPlata_soybean.txt redfertlist_LaPlata_soybean_rainfed_Inc_04.txt irrilist_LaPlata_soybean.txt

# # ======================= Wheat
# ./wofost-NP-wheat-Rainfed red_sus_list_Rhine_winterwheat_rainfed_Inc_04.txt meteolist_WFDE5_Rhine_winterwheat.txt redfertlist_Rhine_winterwheat_rainfed_Inc_04.txt irrilist_Rhine_winterwheat.txt
# ./wofost-NP-wheat-Rainfed red_sus_list_Indus_winterwheat_rainfed_Inc_04.txt meteolist_WFDE5_Indus_winterwheat.txt redfertlist_Indus_winterwheat_rainfed_Inc_04.txt irrilist_Indus_winterwheat.txt
# ./wofost-NP-wheat-Rainfed red_sus_list_Yangtze_winterwheat_rainfed_Inc_04.txt meteolist_WFDE5_Yangtze_winterwheat.txt redfertlist_Yangtze_winterwheat_rainfed_Inc_04.txt irrilist_Yangtze_winterwheat.txt
# ./wofost-NP-wheat-Rainfed red_sus_list_LaPlata_winterwheat_rainfed_Inc_04.txt meteolist_WFDE5_LaPlata_winterwheat.txt redfertlist_LaPlata_winterwheat_rainfed_Inc_04.txt irrilist_LaPlata_winterwheat.txt



# # #  ======================= Maize
# ./wofost-NP-maize-Rainfed red_sus_list_Yangtze_maize_rainfed_Inc_06.txt meteolist_WFDE5_Yangtze_maize.txt redfertlist_Yangtze_maize_rainfed_Inc_06.txt irrilist_Yangtze_maize.txt
# ./wofost-NP-maize-Rainfed red_sus_list_Rhine_maize_rainfed_Inc_06.txt meteolist_WFDE5_Rhine_maize.txt redfertlist_Rhine_maize_rainfed_Inc_06.txt irrilist_Rhine_maize.txt
# ./wofost-NP-maize-Rainfed red_sus_list_Indus_maize_rainfed_Inc_06.txt meteolist_WFDE5_Indus_maize.txt redfertlist_Indus_maize_rainfed_Inc_06.txt irrilist_Indus_maize.txt
# ./wofost-NP-maize-Rainfed red_sus_list_LaPlata_maize_rainfed_Inc_06.txt meteolist_WFDE5_LaPlata_maize.txt redfertlist_LaPlata_maize_rainfed_Inc_06.txt irrilist_LaPlata_maize.txt

# # ======================= Rice
# ./wofost-NP-rice-Rainfed red_sus_list_Indus_mainrice_rainfed_Inc_06.txt meteolist_WFDE5_Indus_mainrice.txt redfertlist_Indus_mainrice_rainfed_Inc_06.txt irrilist_Indus_mainrice.txt
# ./wofost-NP-rice-Rainfed red_sus_list_Yangtze_mainrice_rainfed_Inc_06.txt meteolist_WFDE5_Yangtze_mainrice.txt redfertlist_Yangtze_mainrice_rainfed_Inc_06.txt irrilist_Yangtze_mainrice.txt
# ./wofost-NP-rice-Rainfed red_sus_list_Yangtze_secondrice_rainfed_Inc_06.txt meteolist_WFDE5_Yangtze_secondrice.txt redfertlist_Yangtze_secondrice_rainfed_Inc_06.txt irrilist_Yangtze_secondrice.txt
# ./wofost-NP-rice-Rainfed red_sus_list_LaPlata_mainrice_rainfed_Inc_06.txt meteolist_WFDE5_LaPlata_mainrice.txt redfertlist_LaPlata_mainrice_rainfed_Inc_06.txt irrilist_LaPlata_mainrice.txt

# # ======================= Soybean
# ./wofost-NP-soybean-Rainfed red_sus_list_Yangtze_soybean_rainfed_Inc_06.txt meteolist_WFDE5_Yangtze_soybean.txt redfertlist_Yangtze_soybean_rainfed_Inc_06.txt irrilist_Yangtze_soybean.txt
# ./wofost-NP-soybean-Rainfed red_sus_list_LaPlata_soybean_rainfed_Inc_06.txt meteolist_WFDE5_LaPlata_soybean.txt redfertlist_LaPlata_soybean_rainfed_Inc_06.txt irrilist_LaPlata_soybean.txt

# # ======================= Wheat
# ./wofost-NP-wheat-Rainfed red_sus_list_Rhine_winterwheat_rainfed_Inc_06.txt meteolist_WFDE5_Rhine_winterwheat.txt redfertlist_Rhine_winterwheat_rainfed_Inc_06.txt irrilist_Rhine_winterwheat.txt
# ./wofost-NP-wheat-Rainfed red_sus_list_Indus_winterwheat_rainfed_Inc_06.txt meteolist_WFDE5_Indus_winterwheat.txt redfertlist_Indus_winterwheat_rainfed_Inc_06.txt irrilist_Indus_winterwheat.txt
# ./wofost-NP-wheat-Rainfed red_sus_list_Yangtze_winterwheat_rainfed_Inc_06.txt meteolist_WFDE5_Yangtze_winterwheat.txt redfertlist_Yangtze_winterwheat_rainfed_Inc_06.txt irrilist_Yangtze_winterwheat.txt
# ./wofost-NP-wheat-Rainfed red_sus_list_LaPlata_winterwheat_rainfed_Inc_06.txt meteolist_WFDE5_LaPlata_winterwheat.txt redfertlist_LaPlata_winterwheat_rainfed_Inc_06.txt irrilist_LaPlata_winterwheat.txt


# # #  ======================= Maize
# ./wofost-NP-maize-Rainfed red_sus_list_Yangtze_maize_rainfed_Inc_08.txt meteolist_WFDE5_Yangtze_maize.txt redfertlist_Yangtze_maize_rainfed_Inc_08.txt irrilist_Yangtze_maize.txt
# ./wofost-NP-maize-Rainfed red_sus_list_Rhine_maize_rainfed_Inc_08.txt meteolist_WFDE5_Rhine_maize.txt redfertlist_Rhine_maize_rainfed_Inc_08.txt irrilist_Rhine_maize.txt
# ./wofost-NP-maize-Rainfed red_sus_list_Indus_maize_rainfed_Inc_08.txt meteolist_WFDE5_Indus_maize.txt redfertlist_Indus_maize_rainfed_Inc_08.txt irrilist_Indus_maize.txt
# ./wofost-NP-maize-Rainfed red_sus_list_LaPlata_maize_rainfed_Inc_08.txt meteolist_WFDE5_LaPlata_maize.txt redfertlist_LaPlata_maize_rainfed_Inc_08.txt irrilist_LaPlata_maize.txt

# # ======================= Rice
# ./wofost-NP-rice-Rainfed red_sus_list_Indus_mainrice_rainfed_Inc_08.txt meteolist_WFDE5_Indus_mainrice.txt redfertlist_Indus_mainrice_rainfed_Inc_08.txt irrilist_Indus_mainrice.txt
# ./wofost-NP-rice-Rainfed red_sus_list_Yangtze_mainrice_rainfed_Inc_08.txt meteolist_WFDE5_Yangtze_mainrice.txt redfertlist_Yangtze_mainrice_rainfed_Inc_08.txt irrilist_Yangtze_mainrice.txt
# ./wofost-NP-rice-Rainfed red_sus_list_Yangtze_secondrice_rainfed_Inc_08.txt meteolist_WFDE5_Yangtze_secondrice.txt redfertlist_Yangtze_secondrice_rainfed_Inc_08.txt irrilist_Yangtze_secondrice.txt
# ./wofost-NP-rice-Rainfed red_sus_list_LaPlata_mainrice_rainfed_Inc_08.txt meteolist_WFDE5_LaPlata_mainrice.txt redfertlist_LaPlata_mainrice_rainfed_Inc_08.txt irrilist_LaPlata_mainrice.txt

# # ======================= Soybean
# ./wofost-NP-soybean-Rainfed red_sus_list_Yangtze_soybean_rainfed_Inc_08.txt meteolist_WFDE5_Yangtze_soybean.txt redfertlist_Yangtze_soybean_rainfed_Inc_08.txt irrilist_Yangtze_soybean.txt
# ./wofost-NP-soybean-Rainfed red_sus_list_LaPlata_soybean_rainfed_Inc_08.txt meteolist_WFDE5_LaPlata_soybean.txt redfertlist_LaPlata_soybean_rainfed_Inc_08.txt irrilist_LaPlata_soybean.txt

# # ======================= Wheat
# ./wofost-NP-wheat-Rainfed red_sus_list_Rhine_winterwheat_rainfed_Inc_08.txt meteolist_WFDE5_Rhine_winterwheat.txt redfertlist_Rhine_winterwheat_rainfed_Inc_08.txt irrilist_Rhine_winterwheat.txt
# ./wofost-NP-wheat-Rainfed red_sus_list_Indus_winterwheat_rainfed_Inc_08.txt meteolist_WFDE5_Indus_winterwheat.txt redfertlist_Indus_winterwheat_rainfed_Inc_08.txt irrilist_Indus_winterwheat.txt
# ./wofost-NP-wheat-Rainfed red_sus_list_Yangtze_winterwheat_rainfed_Inc_08.txt meteolist_WFDE5_Yangtze_winterwheat.txt redfertlist_Yangtze_winterwheat_rainfed_Inc_08.txt irrilist_Yangtze_winterwheat.txt
# ./wofost-NP-wheat-Rainfed red_sus_list_LaPlata_winterwheat_rainfed_Inc_08.txt meteolist_WFDE5_LaPlata_winterwheat.txt redfertlist_LaPlata_winterwheat_rainfed_Inc_08.txt irrilist_LaPlata_winterwheat.txt


# # #  ======================= Maize
# ./wofost-NP-maize-Rainfed red_sus_list_Yangtze_maize_rainfed_Inc_10.txt meteolist_WFDE5_Yangtze_maize.txt redfertlist_Yangtze_maize_rainfed_Inc_10.txt irrilist_Yangtze_maize.txt
# ./wofost-NP-maize-Rainfed red_sus_list_Rhine_maize_rainfed_Inc_10.txt meteolist_WFDE5_Rhine_maize.txt redfertlist_Rhine_maize_rainfed_Inc_10.txt irrilist_Rhine_maize.txt
# ./wofost-NP-maize-Rainfed red_sus_list_Indus_maize_rainfed_Inc_10.txt meteolist_WFDE5_Indus_maize.txt redfertlist_Indus_maize_rainfed_Inc_10.txt irrilist_Indus_maize.txt
# ./wofost-NP-maize-Rainfed red_sus_list_LaPlata_maize_rainfed_Inc_10.txt meteolist_WFDE5_LaPlata_maize.txt redfertlist_LaPlata_maize_rainfed_Inc_10.txt irrilist_LaPlata_maize.txt

# # ======================= Rice
# ./wofost-NP-rice-Rainfed red_sus_list_Indus_mainrice_rainfed_Inc_10.txt meteolist_WFDE5_Indus_mainrice.txt redfertlist_Indus_mainrice_rainfed_Inc_10.txt irrilist_Indus_mainrice.txt
# ./wofost-NP-rice-Rainfed red_sus_list_Yangtze_mainrice_rainfed_Inc_10.txt meteolist_WFDE5_Yangtze_mainrice.txt redfertlist_Yangtze_mainrice_rainfed_Inc_10.txt irrilist_Yangtze_mainrice.txt
# ./wofost-NP-rice-Rainfed red_sus_list_Yangtze_secondrice_rainfed_Inc_10.txt meteolist_WFDE5_Yangtze_secondrice.txt redfertlist_Yangtze_secondrice_rainfed_Inc_10.txt irrilist_Yangtze_secondrice.txt
# ./wofost-NP-rice-Rainfed red_sus_list_LaPlata_mainrice_rainfed_Inc_10.txt meteolist_WFDE5_LaPlata_mainrice.txt redfertlist_LaPlata_mainrice_rainfed_Inc_10.txt irrilist_LaPlata_mainrice.txt

# # ======================= Soybean
# ./wofost-NP-soybean-Rainfed red_sus_list_Yangtze_soybean_rainfed_Inc_10.txt meteolist_WFDE5_Yangtze_soybean.txt redfertlist_Yangtze_soybean_rainfed_Inc_10.txt irrilist_Yangtze_soybean.txt
# ./wofost-NP-soybean-Rainfed red_sus_list_LaPlata_soybean_rainfed_Inc_10.txt meteolist_WFDE5_LaPlata_soybean.txt redfertlist_LaPlata_soybean_rainfed_Inc_10.txt irrilist_LaPlata_soybean.txt

# # ======================= Wheat
# ./wofost-NP-wheat-Rainfed red_sus_list_Rhine_winterwheat_rainfed_Inc_10.txt meteolist_WFDE5_Rhine_winterwheat.txt redfertlist_Rhine_winterwheat_rainfed_Inc_10.txt irrilist_Rhine_winterwheat.txt
# ./wofost-NP-wheat-Rainfed red_sus_list_Indus_winterwheat_rainfed_Inc_10.txt meteolist_WFDE5_Indus_winterwheat.txt redfertlist_Indus_winterwheat_rainfed_Inc_10.txt irrilist_Indus_winterwheat.txt
# ./wofost-NP-wheat-Rainfed red_sus_list_Yangtze_winterwheat_rainfed_Inc_10.txt meteolist_WFDE5_Yangtze_winterwheat.txt redfertlist_Yangtze_winterwheat_rainfed_Inc_10.txt irrilist_Yangtze_winterwheat.txt
# ./wofost-NP-wheat-Rainfed red_sus_list_LaPlata_winterwheat_rainfed_Inc_10.txt meteolist_WFDE5_LaPlata_winterwheat.txt redfertlist_LaPlata_winterwheat_rainfed_Inc_10.txt irrilist_LaPlata_winterwheat.txt


# # #  ======================= Maize
# ./wofost-NP-maize-Rainfed red_sus_list_Yangtze_maize_rainfed_Inc_12.txt meteolist_WFDE5_Yangtze_maize.txt redfertlist_Yangtze_maize_rainfed_Inc_12.txt irrilist_Yangtze_maize.txt
# ./wofost-NP-maize-Rainfed red_sus_list_Rhine_maize_rainfed_Inc_12.txt meteolist_WFDE5_Rhine_maize.txt redfertlist_Rhine_maize_rainfed_Inc_12.txt irrilist_Rhine_maize.txt
# ./wofost-NP-maize-Rainfed red_sus_list_Indus_maize_rainfed_Inc_12.txt meteolist_WFDE5_Indus_maize.txt redfertlist_Indus_maize_rainfed_Inc_12.txt irrilist_Indus_maize.txt
# ./wofost-NP-maize-Rainfed red_sus_list_LaPlata_maize_rainfed_Inc_12.txt meteolist_WFDE5_LaPlata_maize.txt redfertlist_LaPlata_maize_rainfed_Inc_12.txt irrilist_LaPlata_maize.txt

# # ======================= Rice
# ./wofost-NP-rice-Rainfed red_sus_list_Indus_mainrice_rainfed_Inc_12.txt meteolist_WFDE5_Indus_mainrice.txt redfertlist_Indus_mainrice_rainfed_Inc_12.txt irrilist_Indus_mainrice.txt
# ./wofost-NP-rice-Rainfed red_sus_list_Yangtze_mainrice_rainfed_Inc_12.txt meteolist_WFDE5_Yangtze_mainrice.txt redfertlist_Yangtze_mainrice_rainfed_Inc_12.txt irrilist_Yangtze_mainrice.txt
# ./wofost-NP-rice-Rainfed red_sus_list_Yangtze_secondrice_rainfed_Inc_12.txt meteolist_WFDE5_Yangtze_secondrice.txt redfertlist_Yangtze_secondrice_rainfed_Inc_12.txt irrilist_Yangtze_secondrice.txt
# ./wofost-NP-rice-Rainfed red_sus_list_LaPlata_mainrice_rainfed_Inc_12.txt meteolist_WFDE5_LaPlata_mainrice.txt redfertlist_LaPlata_mainrice_rainfed_Inc_12.txt irrilist_LaPlata_mainrice.txt

# # ======================= Soybean
# ./wofost-NP-soybean-Rainfed red_sus_list_Yangtze_soybean_rainfed_Inc_12.txt meteolist_WFDE5_Yangtze_soybean.txt redfertlist_Yangtze_soybean_rainfed_Inc_12.txt irrilist_Yangtze_soybean.txt
# ./wofost-NP-soybean-Rainfed red_sus_list_LaPlata_soybean_rainfed_Inc_12.txt meteolist_WFDE5_LaPlata_soybean.txt redfertlist_LaPlata_soybean_rainfed_Inc_12.txt irrilist_LaPlata_soybean.txt

# # ======================= Wheat
# ./wofost-NP-wheat-Rainfed red_sus_list_Rhine_winterwheat_rainfed_Inc_12.txt meteolist_WFDE5_Rhine_winterwheat.txt redfertlist_Rhine_winterwheat_rainfed_Inc_12.txt irrilist_Rhine_winterwheat.txt
# ./wofost-NP-wheat-Rainfed red_sus_list_Indus_winterwheat_rainfed_Inc_12.txt meteolist_WFDE5_Indus_winterwheat.txt redfertlist_Indus_winterwheat_rainfed_Inc_12.txt irrilist_Indus_winterwheat.txt
# ./wofost-NP-wheat-Rainfed red_sus_list_Yangtze_winterwheat_rainfed_Inc_12.txt meteolist_WFDE5_Yangtze_winterwheat.txt redfertlist_Yangtze_winterwheat_rainfed_Inc_12.txt irrilist_Yangtze_winterwheat.txt
# ./wofost-NP-wheat-Rainfed red_sus_list_LaPlata_winterwheat_rainfed_Inc_12.txt meteolist_WFDE5_LaPlata_winterwheat.txt redfertlist_LaPlata_winterwheat_rainfed_Inc_12.txt irrilist_LaPlata_winterwheat.txt


# # #  ======================= Maize
# ./wofost-NP-maize-Rainfed red_sus_list_Yangtze_maize_rainfed_Inc_14.txt meteolist_WFDE5_Yangtze_maize.txt redfertlist_Yangtze_maize_rainfed_Inc_14.txt irrilist_Yangtze_maize.txt
# ./wofost-NP-maize-Rainfed red_sus_list_Rhine_maize_rainfed_Inc_14.txt meteolist_WFDE5_Rhine_maize.txt redfertlist_Rhine_maize_rainfed_Inc_14.txt irrilist_Rhine_maize.txt
# ./wofost-NP-maize-Rainfed red_sus_list_Indus_maize_rainfed_Inc_14.txt meteolist_WFDE5_Indus_maize.txt redfertlist_Indus_maize_rainfed_Inc_14.txt irrilist_Indus_maize.txt
# ./wofost-NP-maize-Rainfed red_sus_list_LaPlata_maize_rainfed_Inc_14.txt meteolist_WFDE5_LaPlata_maize.txt redfertlist_LaPlata_maize_rainfed_Inc_14.txt irrilist_LaPlata_maize.txt

# # ======================= Rice
# ./wofost-NP-rice-Rainfed red_sus_list_Indus_mainrice_rainfed_Inc_14.txt meteolist_WFDE5_Indus_mainrice.txt redfertlist_Indus_mainrice_rainfed_Inc_14.txt irrilist_Indus_mainrice.txt
# ./wofost-NP-rice-Rainfed red_sus_list_Yangtze_mainrice_rainfed_Inc_14.txt meteolist_WFDE5_Yangtze_mainrice.txt redfertlist_Yangtze_mainrice_rainfed_Inc_14.txt irrilist_Yangtze_mainrice.txt
# ./wofost-NP-rice-Rainfed red_sus_list_Yangtze_secondrice_rainfed_Inc_14.txt meteolist_WFDE5_Yangtze_secondrice.txt redfertlist_Yangtze_secondrice_rainfed_Inc_14.txt irrilist_Yangtze_secondrice.txt
# ./wofost-NP-rice-Rainfed red_sus_list_LaPlata_mainrice_rainfed_Inc_14.txt meteolist_WFDE5_LaPlata_mainrice.txt redfertlist_LaPlata_mainrice_rainfed_Inc_14.txt irrilist_LaPlata_mainrice.txt

# # ======================= Soybean
# ./wofost-NP-soybean-Rainfed red_sus_list_Yangtze_soybean_rainfed_Inc_14.txt meteolist_WFDE5_Yangtze_soybean.txt redfertlist_Yangtze_soybean_rainfed_Inc_14.txt irrilist_Yangtze_soybean.txt
# ./wofost-NP-soybean-Rainfed red_sus_list_LaPlata_soybean_rainfed_Inc_14.txt meteolist_WFDE5_LaPlata_soybean.txt redfertlist_LaPlata_soybean_rainfed_Inc_14.txt irrilist_LaPlata_soybean.txt

# # ======================= Wheat
# ./wofost-NP-wheat-Rainfed red_sus_list_Rhine_winterwheat_rainfed_Inc_14.txt meteolist_WFDE5_Rhine_winterwheat.txt redfertlist_Rhine_winterwheat_rainfed_Inc_14.txt irrilist_Rhine_winterwheat.txt
# ./wofost-NP-wheat-Rainfed red_sus_list_Indus_winterwheat_rainfed_Inc_14.txt meteolist_WFDE5_Indus_winterwheat.txt redfertlist_Indus_winterwheat_rainfed_Inc_14.txt irrilist_Indus_winterwheat.txt
# ./wofost-NP-wheat-Rainfed red_sus_list_Yangtze_winterwheat_rainfed_Inc_14.txt meteolist_WFDE5_Yangtze_winterwheat.txt redfertlist_Yangtze_winterwheat_rainfed_Inc_14.txt irrilist_Yangtze_winterwheat.txt
# ./wofost-NP-wheat-Rainfed red_sus_list_LaPlata_winterwheat_rainfed_Inc_14.txt meteolist_WFDE5_LaPlata_winterwheat.txt redfertlist_LaPlata_winterwheat_rainfed_Inc_14.txt irrilist_LaPlata_winterwheat.txt
