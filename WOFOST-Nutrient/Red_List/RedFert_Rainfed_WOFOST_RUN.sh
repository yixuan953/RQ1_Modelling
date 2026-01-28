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

# # ======================= Maize
# ./wofost-NP-maize-Rainfed red_sus_list_Yangtze_maize_rainfed.txt meteolist_WFDE5_Yangtze_maize.txt redfertlist_Yangtze_maize_rainfed.txt susirrilist_Yangtze_maize.txt
# ./wofost-NP-maize-Rainfed red_sus_list_Rhine_maize_rainfed.txt meteolist_WFDE5_Rhine_maize.txt redfertlist_Rhine_maize_rainfed.txt susirrilist_Rhine_maize.txt
# ./wofost-NP-maize-Rainfed red_sus_list_Indus_maize_rainfed.txt meteolist_WFDE5_Indus_maize.txt redfertlist_Indus_maize_rainfed.txt susirrilist_Indus_maize.txt
# ./wofost-NP-maize-Rainfed red_sus_list_LaPlata_maize_rainfed.txt meteolist_WFDE5_LaPlata_maize.txt redfertlist_LaPlata_maize_rainfed.txt susirrilist_LaPlata_maize.txt

# # # ======================= Rice
# ./wofost-NP-rice-Rainfed red_sus_list_Indus_mainrice_rainfed.txt meteolist_WFDE5_Indus_mainrice.txt redfertlist_Indus_mainrice_rainfed.txt susirrilist_Indus_mainrice.txt
# ./wofost-NP-rice-Rainfed red_sus_list_Yangtze_mainrice_rainfed.txt meteolist_WFDE5_Yangtze_mainrice.txt redfertlist_Yangtze_mainrice_rainfed.txt susirrilist_Yangtze_mainrice.txt
# ./wofost-NP-rice-Rainfed red_sus_list_Yangtze_secondrice_rainfed.txt meteolist_WFDE5_Yangtze_secondrice.txt redfertlist_Yangtze_secondrice_rainfed.txt susirrilist_Yangtze_secondrice.txt
# ./wofost-NP-rice-Rainfed red_sus_list_LaPlata_mainrice_rainfed.txt meteolist_WFDE5_LaPlata_mainrice.txt redfertlist_LaPlata_mainrice_rainfed.txt susirrilist_LaPlata_mainrice.txt

# # ======================= Soybean
# ./wofost-NP-soybean-Rainfed red_sus_list_Yangtze_soybean_rainfed.txt meteolist_WFDE5_Yangtze_soybean.txt redfertlist_Yangtze_soybean_rainfed.txt susirrilist_Yangtze_soybean.txt
# ./wofost-NP-soybean-Rainfed red_sus_list_LaPlata_soybean_rainfed.txt meteolist_WFDE5_LaPlata_soybean.txt redfertlist_LaPlata_soybean_rainfed.txt susirrilist_LaPlata_soybean.txt

# # ======================= Wheat
# ./wofost-NP-wheat-Rainfed red_sus_list_Rhine_winterwheat_rainfed.txt meteolist_WFDE5_Rhine_winterwheat.txt redfertlist_Rhine_winterwheat_rainfed.txt susirrilist_Rhine_winterwheat.txt
# ./wofost-NP-wheat-Rainfed red_sus_list_Indus_winterwheat_rainfed.txt meteolist_WFDE5_Indus_winterwheat.txt redfertlist_Indus_winterwheat_rainfed.txt susirrilist_Indus_winterwheat.txt
# ./wofost-NP-wheat-Rainfed red_sus_list_Yangtze_winterwheat_rainfed.txt meteolist_WFDE5_Yangtze_winterwheat.txt redfertlist_Yangtze_winterwheat_rainfed.txt susirrilist_Yangtze_winterwheat.txt
# ./wofost-NP-wheat-Rainfed red_sus_list_LaPlata_winterwheat_rainfed.txt meteolist_WFDE5_LaPlata_winterwheat.txt redfertlist_LaPlata_winterwheat_rainfed.txt susirrilist_LaPlata_winterwheat.txt

# # ======================= Maize
# ./wofost-NP-maize-Rainfed red_sus_list_Yangtze_maize_rainfed_Red_20.txt meteolist_WFDE5_Yangtze_maize.txt redfertlist_Yangtze_maize_rainfed_Red_20.txt susirrilist_Yangtze_maize.txt
# ./wofost-NP-maize-Rainfed red_sus_list_Rhine_maize_rainfed_Red_20.txt meteolist_WFDE5_Rhine_maize.txt redfertlist_Rhine_maize_rainfed_Red_20.txt susirrilist_Rhine_maize.txt
# ./wofost-NP-maize-Rainfed red_sus_list_Indus_maize_rainfed_Red_20.txt meteolist_WFDE5_Indus_maize.txt redfertlist_Indus_maize_rainfed_Red_20.txt susirrilist_Indus_maize.txt
# ./wofost-NP-maize-Rainfed red_sus_list_LaPlata_maize_rainfed_Red_20.txt meteolist_WFDE5_LaPlata_maize.txt redfertlist_LaPlata_maize_rainfed_Red_20.txt susirrilist_LaPlata_maize.txt

# # # ======================= Rice
# ./wofost-NP-rice-Rainfed red_sus_list_Indus_mainrice_rainfed_Red_20.txt meteolist_WFDE5_Indus_mainrice.txt redfertlist_Indus_mainrice_rainfed_Red_20.txt susirrilist_Indus_mainrice.txt
# ./wofost-NP-rice-Rainfed red_sus_list_Yangtze_mainrice_rainfed_Red_20.txt meteolist_WFDE5_Yangtze_mainrice.txt redfertlist_Yangtze_mainrice_rainfed_Red_20.txt susirrilist_Yangtze_mainrice.txt
# ./wofost-NP-rice-Rainfed red_sus_list_Yangtze_secondrice_rainfed_Red_20.txt meteolist_WFDE5_Yangtze_secondrice.txt redfertlist_Yangtze_secondrice_rainfed_Red_20.txt susirrilist_Yangtze_secondrice.txt
# ./wofost-NP-rice-Rainfed red_sus_list_LaPlata_mainrice_rainfed_Red_20.txt meteolist_WFDE5_LaPlata_mainrice.txt redfertlist_LaPlata_mainrice_rainfed_Red_20.txt susirrilist_LaPlata_mainrice.txt

# # ======================= Soybean
# ./wofost-NP-soybean-Rainfed red_sus_list_Yangtze_soybean_rainfed_Red_20.txt meteolist_WFDE5_Yangtze_soybean.txt redfertlist_Yangtze_soybean_rainfed_Red_20.txt susirrilist_Yangtze_soybean.txt
# ./wofost-NP-soybean-Rainfed red_sus_list_LaPlata_soybean_rainfed_Red_20.txt meteolist_WFDE5_LaPlata_soybean.txt redfertlist_LaPlata_soybean_rainfed_Red_20.txt susirrilist_LaPlata_soybean.txt

# # ======================= Wheat
# ./wofost-NP-wheat-Rainfed red_sus_list_Rhine_winterwheat_rainfed_Red_20.txt meteolist_WFDE5_Rhine_winterwheat.txt redfertlist_Rhine_winterwheat_rainfed_Red_20.txt susirrilist_Rhine_winterwheat.txt
# ./wofost-NP-wheat-Rainfed red_sus_list_Indus_winterwheat_rainfed_Red_20.txt meteolist_WFDE5_Indus_winterwheat.txt redfertlist_Indus_winterwheat_rainfed_Red_20.txt susirrilist_Indus_winterwheat.txt
# ./wofost-NP-wheat-Rainfed red_sus_list_Yangtze_winterwheat_rainfed_Red_20.txt meteolist_WFDE5_Yangtze_winterwheat.txt redfertlist_Yangtze_winterwheat_rainfed_Red_20.txt susirrilist_Yangtze_winterwheat.txt
# ./wofost-NP-wheat-Rainfed red_sus_list_LaPlata_winterwheat_rainfed_Red_20.txt meteolist_WFDE5_LaPlata_winterwheat.txt redfertlist_LaPlata_winterwheat_rainfed_Red_20.txt susirrilist_LaPlata_winterwheat.txt

# # ======================= Maize
# ./wofost-NP-maize-Rainfed red_sus_list_Yangtze_maize_rainfed_Red_25.txt meteolist_WFDE5_Yangtze_maize.txt redfertlist_Yangtze_maize_rainfed_Red_25.txt susirrilist_Yangtze_maize.txt
# ./wofost-NP-maize-Rainfed red_sus_list_Rhine_maize_rainfed_Red_25.txt meteolist_WFDE5_Rhine_maize.txt redfertlist_Rhine_maize_rainfed_Red_25.txt susirrilist_Rhine_maize.txt
# ./wofost-NP-maize-Rainfed red_sus_list_Indus_maize_rainfed_Red_25.txt meteolist_WFDE5_Indus_maize.txt redfertlist_Indus_maize_rainfed_Red_25.txt susirrilist_Indus_maize.txt
# ./wofost-NP-maize-Rainfed red_sus_list_LaPlata_maize_rainfed_Red_25.txt meteolist_WFDE5_LaPlata_maize.txt redfertlist_LaPlata_maize_rainfed_Red_25.txt susirrilist_LaPlata_maize.txt

# # # ======================= Rice
# ./wofost-NP-rice-Rainfed red_sus_list_Indus_mainrice_rainfed_Red_25.txt meteolist_WFDE5_Indus_mainrice.txt redfertlist_Indus_mainrice_rainfed_Red_25.txt susirrilist_Indus_mainrice.txt
# ./wofost-NP-rice-Rainfed red_sus_list_Yangtze_mainrice_rainfed_Red_25.txt meteolist_WFDE5_Yangtze_mainrice.txt redfertlist_Yangtze_mainrice_rainfed_Red_25.txt susirrilist_Yangtze_mainrice.txt
# ./wofost-NP-rice-Rainfed red_sus_list_Yangtze_secondrice_rainfed_Red_25.txt meteolist_WFDE5_Yangtze_secondrice.txt redfertlist_Yangtze_secondrice_rainfed_Red_25.txt susirrilist_Yangtze_secondrice.txt
# ./wofost-NP-rice-Rainfed red_sus_list_LaPlata_mainrice_rainfed_Red_25.txt meteolist_WFDE5_LaPlata_mainrice.txt redfertlist_LaPlata_mainrice_rainfed_Red_25.txt susirrilist_LaPlata_mainrice.txt

# # ======================= Soybean
# ./wofost-NP-soybean-Rainfed red_sus_list_Yangtze_soybean_rainfed_Red_25.txt meteolist_WFDE5_Yangtze_soybean.txt redfertlist_Yangtze_soybean_rainfed_Red_25.txt susirrilist_Yangtze_soybean.txt
# ./wofost-NP-soybean-Rainfed red_sus_list_LaPlata_soybean_rainfed_Red_25.txt meteolist_WFDE5_LaPlata_soybean.txt redfertlist_LaPlata_soybean_rainfed_Red_25.txt susirrilist_LaPlata_soybean.txt

# # ======================= Wheat
# ./wofost-NP-wheat-Rainfed red_sus_list_Rhine_winterwheat_rainfed_Red_25.txt meteolist_WFDE5_Rhine_winterwheat.txt redfertlist_Rhine_winterwheat_rainfed_Red_25.txt susirrilist_Rhine_winterwheat.txt
# ./wofost-NP-wheat-Rainfed red_sus_list_Indus_winterwheat_rainfed_Red_25.txt meteolist_WFDE5_Indus_winterwheat.txt redfertlist_Indus_winterwheat_rainfed_Red_25.txt susirrilist_Indus_winterwheat.txt
# ./wofost-NP-wheat-Rainfed red_sus_list_Yangtze_winterwheat_rainfed_Red_25.txt meteolist_WFDE5_Yangtze_winterwheat.txt redfertlist_Yangtze_winterwheat_rainfed_Red_25.txt susirrilist_Yangtze_winterwheat.txt
# ./wofost-NP-wheat-Rainfed red_sus_list_LaPlata_winterwheat_rainfed_Red_25.txt meteolist_WFDE5_LaPlata_winterwheat.txt redfertlist_LaPlata_winterwheat_rainfed_Red_25.txt susirrilist_LaPlata_winterwheat.txt


# # ======================= Maize
# ./wofost-NP-maize-Rainfed red_sus_list_Yangtze_maize_rainfed_Red_08.txt meteolist_WFDE5_Yangtze_maize.txt redfertlist_Yangtze_maize_rainfed_Red_30.txt susirrilist_Yangtze_maize.txt
# ./wofost-NP-maize-Rainfed red_sus_list_Rhine_maize_rainfed_Red_30.txt meteolist_WFDE5_Rhine_maize.txt redfertlist_Rhine_maize_rainfed_Red_30.txt susirrilist_Rhine_maize.txt
# ./wofost-NP-maize-Rainfed red_sus_list_Indus_maize_rainfed_Red_30.txt meteolist_WFDE5_Indus_maize.txt redfertlist_Indus_maize_rainfed_Red_30.txt susirrilist_Indus_maize.txt
# ./wofost-NP-maize-Rainfed red_sus_list_LaPlata_maize_rainfed_Red_30.txt meteolist_WFDE5_LaPlata_maize.txt redfertlist_LaPlata_maize_rainfed_Red_30.txt susirrilist_LaPlata_maize.txt

# # # ======================= Rice
# ./wofost-NP-rice-Rainfed red_sus_list_Indus_mainrice_rainfed_Red_30.txt meteolist_WFDE5_Indus_mainrice.txt redfertlist_Indus_mainrice_rainfed_Red_30.txt susirrilist_Indus_mainrice.txt
# ./wofost-NP-rice-Rainfed red_sus_list_Yangtze_mainrice_rainfed_Red_30.txt meteolist_WFDE5_Yangtze_mainrice.txt redfertlist_Yangtze_mainrice_rainfed_Red_30.txt susirrilist_Yangtze_mainrice.txt
# ./wofost-NP-rice-Rainfed red_sus_list_Yangtze_secondrice_rainfed_Red_30.txt meteolist_WFDE5_Yangtze_secondrice.txt redfertlist_Yangtze_secondrice_rainfed_Red_30.txt susirrilist_Yangtze_secondrice.txt
# ./wofost-NP-rice-Rainfed red_sus_list_LaPlata_mainrice_rainfed_Red_30.txt meteolist_WFDE5_LaPlata_mainrice.txt redfertlist_LaPlata_mainrice_rainfed_Red_30.txt susirrilist_LaPlata_mainrice.txt

# # ======================= Soybean
# ./wofost-NP-soybean-Rainfed red_sus_list_Yangtze_soybean_rainfed_Red_30.txt meteolist_WFDE5_Yangtze_soybean.txt redfertlist_Yangtze_soybean_rainfed_Red_30.txt susirrilist_Yangtze_soybean.txt
# ./wofost-NP-soybean-Rainfed red_sus_list_LaPlata_soybean_rainfed_Red_30.txt meteolist_WFDE5_LaPlata_soybean.txt redfertlist_LaPlata_soybean_rainfed_Red_30.txt susirrilist_LaPlata_soybean.txt

# # ======================= Wheat
# ./wofost-NP-wheat-Rainfed red_sus_list_Rhine_winterwheat_rainfed_Red_30.txt meteolist_WFDE5_Rhine_winterwheat.txt redfertlist_Rhine_winterwheat_rainfed_Red_30.txt susirrilist_Rhine_winterwheat.txt
# ./wofost-NP-wheat-Rainfed red_sus_list_Indus_winterwheat_rainfed_Red_30.txt meteolist_WFDE5_Indus_winterwheat.txt redfertlist_Indus_winterwheat_rainfed_Red_30.txt susirrilist_Indus_winterwheat.txt
# ./wofost-NP-wheat-Rainfed red_sus_list_Yangtze_winterwheat_rainfed_Red_30.txt meteolist_WFDE5_Yangtze_winterwheat.txt redfertlist_Yangtze_winterwheat_rainfed_Red_30.txt susirrilist_Yangtze_winterwheat.txt
# ./wofost-NP-wheat-Rainfed red_sus_list_LaPlata_winterwheat_rainfed_Red_30.txt meteolist_WFDE5_LaPlata_winterwheat.txt redfertlist_LaPlata_winterwheat_rainfed_Red_30.txt susirrilist_LaPlata_winterwheat.txt

# # ======================= Maize
# ./wofost-NP-maize-Rainfed red_sus_list_Yangtze_maize_rainfed_Red_35.txt meteolist_WFDE5_Yangtze_maize.txt redfertlist_Yangtze_maize_rainfed_Red_35.txt susirrilist_Yangtze_maize.txt
# ./wofost-NP-maize-Rainfed red_sus_list_Rhine_maize_rainfed_Red_35.txt meteolist_WFDE5_Rhine_maize.txt redfertlist_Rhine_maize_rainfed_Red_35.txt susirrilist_Rhine_maize.txt
# ./wofost-NP-maize-Rainfed red_sus_list_Indus_maize_rainfed_Red_35.txt meteolist_WFDE5_Indus_maize.txt redfertlist_Indus_maize_rainfed_Red_35.txt susirrilist_Indus_maize.txt
# ./wofost-NP-maize-Rainfed red_sus_list_LaPlata_maize_rainfed_Red_35.txt meteolist_WFDE5_LaPlata_maize.txt redfertlist_LaPlata_maize_rainfed_Red_35.txt susirrilist_LaPlata_maize.txt

# # # ======================= Rice
# ./wofost-NP-rice-Rainfed red_sus_list_Indus_mainrice_rainfed_Red_35.txt meteolist_WFDE5_Indus_mainrice.txt redfertlist_Indus_mainrice_rainfed_Red_35.txt susirrilist_Indus_mainrice.txt
# ./wofost-NP-rice-Rainfed red_sus_list_Yangtze_mainrice_rainfed_Red_35.txt meteolist_WFDE5_Yangtze_mainrice.txt redfertlist_Yangtze_mainrice_rainfed_Red_35.txt susirrilist_Yangtze_mainrice.txt
# ./wofost-NP-rice-Rainfed red_sus_list_Yangtze_secondrice_rainfed_Red_35.txt meteolist_WFDE5_Yangtze_secondrice.txt redfertlist_Yangtze_secondrice_rainfed_Red_35.txt susirrilist_Yangtze_secondrice.txt
# ./wofost-NP-rice-Rainfed red_sus_list_LaPlata_mainrice_rainfed_Red_35.txt meteolist_WFDE5_LaPlata_mainrice.txt redfertlist_LaPlata_mainrice_rainfed_Red_35.txt susirrilist_LaPlata_mainrice.txt

# # ======================= Soybean
# ./wofost-NP-soybean-Rainfed red_sus_list_Yangtze_soybean_rainfed_Red_35.txt meteolist_WFDE5_Yangtze_soybean.txt redfertlist_Yangtze_soybean_rainfed_Red_35.txt susirrilist_Yangtze_soybean.txt
# ./wofost-NP-soybean-Rainfed red_sus_list_LaPlata_soybean_rainfed_Red_35.txt meteolist_WFDE5_LaPlata_soybean.txt redfertlist_LaPlata_soybean_rainfed_Red_35.txt susirrilist_LaPlata_soybean.txt

# # ======================= Wheat
# ./wofost-NP-wheat-Rainfed red_sus_list_Rhine_winterwheat_rainfed_Red_35.txt meteolist_WFDE5_Rhine_winterwheat.txt redfertlist_Rhine_winterwheat_rainfed_Red_35.txt susirrilist_Rhine_winterwheat.txt
# ./wofost-NP-wheat-Rainfed red_sus_list_Indus_winterwheat_rainfed_Red_35.txt meteolist_WFDE5_Indus_winterwheat.txt redfertlist_Indus_winterwheat_rainfed_Red_35.txt susirrilist_Indus_winterwheat.txt
# ./wofost-NP-wheat-Rainfed red_sus_list_Yangtze_winterwheat_rainfed_Red_35.txt meteolist_WFDE5_Yangtze_winterwheat.txt redfertlist_Yangtze_winterwheat_rainfed_Red_35.txt susirrilist_Yangtze_winterwheat.txt
# ./wofost-NP-wheat-Rainfed red_sus_list_LaPlata_winterwheat_rainfed_Red_35.txt meteolist_WFDE5_LaPlata_winterwheat.txt redfertlist_LaPlata_winterwheat_rainfed_Red_35.txt susirrilist_LaPlata_winterwheat.txt


# # ======================= Maize
# ./wofost-NP-maize-Rainfed red_sus_list_Yangtze_maize_rainfed_Red_40.txt meteolist_WFDE5_Yangtze_maize.txt redfertlist_Yangtze_maize_rainfed_Red_40.txt susirrilist_Yangtze_maize.txt
# ./wofost-NP-maize-Rainfed red_sus_list_Rhine_maize_rainfed_Red_40.txt meteolist_WFDE5_Rhine_maize.txt redfertlist_Rhine_maize_rainfed_Red_40.txt susirrilist_Rhine_maize.txt
# ./wofost-NP-maize-Rainfed red_sus_list_Indus_maize_rainfed_Red_40.txt meteolist_WFDE5_Indus_maize.txt redfertlist_Indus_maize_rainfed_Red_40.txt susirrilist_Indus_maize.txt
# ./wofost-NP-maize-Rainfed red_sus_list_LaPlata_maize_rainfed_Red_40.txt meteolist_WFDE5_LaPlata_maize.txt redfertlist_LaPlata_maize_rainfed_Red_40.txt susirrilist_LaPlata_maize.txt

# # # ======================= Rice
# ./wofost-NP-rice-Rainfed red_sus_list_Indus_mainrice_rainfed_Red_40.txt meteolist_WFDE5_Indus_mainrice.txt redfertlist_Indus_mainrice_rainfed_Red_40.txt susirrilist_Indus_mainrice.txt
# ./wofost-NP-rice-Rainfed red_sus_list_Yangtze_mainrice_rainfed_Red_40.txt meteolist_WFDE5_Yangtze_mainrice.txt redfertlist_Yangtze_mainrice_rainfed_Red_40.txt susirrilist_Yangtze_mainrice.txt
# ./wofost-NP-rice-Rainfed red_sus_list_Yangtze_secondrice_rainfed_Red_40.txt meteolist_WFDE5_Yangtze_secondrice.txt redfertlist_Yangtze_secondrice_rainfed_Red_40.txt susirrilist_Yangtze_secondrice.txt
# ./wofost-NP-rice-Rainfed red_sus_list_LaPlata_mainrice_rainfed_Red_40.txt meteolist_WFDE5_LaPlata_mainrice.txt redfertlist_LaPlata_mainrice_rainfed_Red_40.txt susirrilist_LaPlata_mainrice.txt

# # ======================= Soybean
# ./wofost-NP-soybean-Rainfed red_sus_list_Yangtze_soybean_rainfed_Red_40.txt meteolist_WFDE5_Yangtze_soybean.txt redfertlist_Yangtze_soybean_rainfed_Red_40.txt susirrilist_Yangtze_soybean.txt
# ./wofost-NP-soybean-Rainfed red_sus_list_LaPlata_soybean_rainfed_Red_40.txt meteolist_WFDE5_LaPlata_soybean.txt redfertlist_LaPlata_soybean_rainfed_Red_40.txt susirrilist_LaPlata_soybean.txt

# # ======================= Wheat
# ./wofost-NP-wheat-Rainfed red_sus_list_Rhine_winterwheat_rainfed_Red_40.txt meteolist_WFDE5_Rhine_winterwheat.txt redfertlist_Rhine_winterwheat_rainfed_Red_40.txt susirrilist_Rhine_winterwheat.txt
# ./wofost-NP-wheat-Rainfed red_sus_list_Indus_winterwheat_rainfed_Red_40.txt meteolist_WFDE5_Indus_winterwheat.txt redfertlist_Indus_winterwheat_rainfed_Red_40.txt susirrilist_Indus_winterwheat.txt
# ./wofost-NP-wheat-Rainfed red_sus_list_Yangtze_winterwheat_rainfed_Red_40.txt meteolist_WFDE5_Yangtze_winterwheat.txt redfertlist_Yangtze_winterwheat_rainfed_Red_40.txt susirrilist_Yangtze_winterwheat.txt
# ./wofost-NP-wheat-Rainfed red_sus_list_LaPlata_winterwheat_rainfed_Red_40.txt meteolist_WFDE5_LaPlata_winterwheat.txt redfertlist_LaPlata_winterwheat_rainfed_Red_40.txt susirrilist_LaPlata_winterwheat.txt

# # ======================= Maize
# ./wofost-NP-maize-Rainfed red_sus_list_Yangtze_maize_rainfed_Red_50.txt meteolist_WFDE5_Yangtze_maize.txt redfertlist_Yangtze_maize_rainfed_Red_50.txt susirrilist_Yangtze_maize.txt
# ./wofost-NP-maize-Rainfed red_sus_list_Rhine_maize_rainfed_Red_50.txt meteolist_WFDE5_Rhine_maize.txt redfertlist_Rhine_maize_rainfed_Red_50.txt susirrilist_Rhine_maize.txt
# ./wofost-NP-maize-Rainfed red_sus_list_Indus_maize_rainfed_Red_50.txt meteolist_WFDE5_Indus_maize.txt redfertlist_Indus_maize_rainfed_Red_50.txt susirrilist_Indus_maize.txt
# ./wofost-NP-maize-Rainfed red_sus_list_LaPlata_maize_rainfed_Red_50.txt meteolist_WFDE5_LaPlata_maize.txt redfertlist_LaPlata_maize_rainfed_Red_50.txt susirrilist_LaPlata_maize.txt

# # # ======================= Rice
# ./wofost-NP-rice-Rainfed red_sus_list_Indus_mainrice_rainfed_Red_50.txt meteolist_WFDE5_Indus_mainrice.txt redfertlist_Indus_mainrice_rainfed_Red_50.txt susirrilist_Indus_mainrice.txt
# ./wofost-NP-rice-Rainfed red_sus_list_Yangtze_mainrice_rainfed_Red_50.txt meteolist_WFDE5_Yangtze_mainrice.txt redfertlist_Yangtze_mainrice_rainfed_Red_50.txt susirrilist_Yangtze_mainrice.txt
# ./wofost-NP-rice-Rainfed red_sus_list_Yangtze_secondrice_rainfed_Red_50.txt meteolist_WFDE5_Yangtze_secondrice.txt redfertlist_Yangtze_secondrice_rainfed_Red_50.txt susirrilist_Yangtze_secondrice.txt
# ./wofost-NP-rice-Rainfed red_sus_list_LaPlata_mainrice_rainfed_Red_50.txt meteolist_WFDE5_LaPlata_mainrice.txt redfertlist_LaPlata_mainrice_rainfed_Red_50.txt susirrilist_LaPlata_mainrice.txt

# # ======================= Soybean
# ./wofost-NP-soybean-Rainfed red_sus_list_Yangtze_soybean_rainfed_Red_50.txt meteolist_WFDE5_Yangtze_soybean.txt redfertlist_Yangtze_soybean_rainfed_Red_50.txt susirrilist_Yangtze_soybean.txt
# ./wofost-NP-soybean-Rainfed red_sus_list_LaPlata_soybean_rainfed_Red_50.txt meteolist_WFDE5_LaPlata_soybean.txt redfertlist_LaPlata_soybean_rainfed_Red_50.txt susirrilist_LaPlata_soybean.txt

# # ======================= Wheat
# ./wofost-NP-wheat-Rainfed red_sus_list_Rhine_winterwheat_rainfed_Red_50.txt meteolist_WFDE5_Rhine_winterwheat.txt redfertlist_Rhine_winterwheat_rainfed_Red_50.txt susirrilist_Rhine_winterwheat.txt
# ./wofost-NP-wheat-Rainfed red_sus_list_Indus_winterwheat_rainfed_Red_50.txt meteolist_WFDE5_Indus_winterwheat.txt redfertlist_Indus_winterwheat_rainfed_Red_50.txt susirrilist_Indus_winterwheat.txt
# ./wofost-NP-wheat-Rainfed red_sus_list_Yangtze_winterwheat_rainfed_Red_50.txt meteolist_WFDE5_Yangtze_winterwheat.txt redfertlist_Yangtze_winterwheat_rainfed_Red_50.txt susirrilist_Yangtze_winterwheat.txt
# ./wofost-NP-wheat-Rainfed red_sus_list_LaPlata_winterwheat_rainfed_Red_50.txt meteolist_WFDE5_LaPlata_winterwheat.txt redfertlist_LaPlata_winterwheat_rainfed_Red_50.txt susirrilist_LaPlata_winterwheat.txt



# # ======================= Maize
# ./wofost-NP-maize-Rainfed red_sus_list_Yangtze_maize_rainfed_Red_15.txt meteolist_WFDE5_Yangtze_maize.txt redfertlist_Yangtze_maize_rainfed_Red_15.txt susirrilist_Yangtze_maize.txt
# ./wofost-NP-maize-Rainfed red_sus_list_Rhine_maize_rainfed_Red_15.txt meteolist_WFDE5_Rhine_maize.txt redfertlist_Rhine_maize_rainfed_Red_15.txt susirrilist_Rhine_maize.txt
# ./wofost-NP-maize-Rainfed red_sus_list_Indus_maize_rainfed_Red_15.txt meteolist_WFDE5_Indus_maize.txt redfertlist_Indus_maize_rainfed_Red_15.txt susirrilist_Indus_maize.txt
# ./wofost-NP-maize-Rainfed red_sus_list_LaPlata_maize_rainfed_Red_15.txt meteolist_WFDE5_LaPlata_maize.txt redfertlist_LaPlata_maize_rainfed_Red_15.txt susirrilist_LaPlata_maize.txt

# # # ======================= Rice
# ./wofost-NP-rice-Rainfed red_sus_list_Indus_mainrice_rainfed_Red_15.txt meteolist_WFDE5_Indus_mainrice.txt redfertlist_Indus_mainrice_rainfed_Red_15.txt susirrilist_Indus_mainrice.txt
# ./wofost-NP-rice-Rainfed red_sus_list_Yangtze_mainrice_rainfed_Red_15.txt meteolist_WFDE5_Yangtze_mainrice.txt redfertlist_Yangtze_mainrice_rainfed_Red_15.txt susirrilist_Yangtze_mainrice.txt
# ./wofost-NP-rice-Rainfed red_sus_list_Yangtze_secondrice_rainfed_Red_15.txt meteolist_WFDE5_Yangtze_secondrice.txt redfertlist_Yangtze_secondrice_rainfed_Red_15.txt susirrilist_Yangtze_secondrice.txt
# ./wofost-NP-rice-Rainfed red_sus_list_LaPlata_mainrice_rainfed_Red_15.txt meteolist_WFDE5_LaPlata_mainrice.txt redfertlist_LaPlata_mainrice_rainfed_Red_15.txt susirrilist_LaPlata_mainrice.txt

# # ======================= Soybean
# ./wofost-NP-soybean-Rainfed red_sus_list_Yangtze_soybean_rainfed_Red_15.txt meteolist_WFDE5_Yangtze_soybean.txt redfertlist_Yangtze_soybean_rainfed_Red_15.txt susirrilist_Yangtze_soybean.txt
# ./wofost-NP-soybean-Rainfed red_sus_list_LaPlata_soybean_rainfed_Red_15.txt meteolist_WFDE5_LaPlata_soybean.txt redfertlist_LaPlata_soybean_rainfed_Red_15.txt susirrilist_LaPlata_soybean.txt

# # ======================= Wheat
# ./wofost-NP-wheat-Rainfed red_sus_list_Rhine_winterwheat_rainfed_Red_15.txt meteolist_WFDE5_Rhine_winterwheat.txt redfertlist_Rhine_winterwheat_rainfed_Red_15.txt susirrilist_Rhine_winterwheat.txt
# ./wofost-NP-wheat-Rainfed red_sus_list_Indus_winterwheat_rainfed_Red_15.txt meteolist_WFDE5_Indus_winterwheat.txt redfertlist_Indus_winterwheat_rainfed_Red_15.txt susirrilist_Indus_winterwheat.txt
# ./wofost-NP-wheat-Rainfed red_sus_list_Yangtze_winterwheat_rainfed_Red_15.txt meteolist_WFDE5_Yangtze_winterwheat.txt redfertlist_Yangtze_winterwheat_rainfed_Red_15.txt susirrilist_Yangtze_winterwheat.txt
# ./wofost-NP-wheat-Rainfed red_sus_list_LaPlata_winterwheat_rainfed_Red_15.txt meteolist_WFDE5_LaPlata_winterwheat.txt redfertlist_LaPlata_winterwheat_rainfed_Red_15.txt susirrilist_LaPlata_winterwheat.txt




# # ======================= Maize
# ./wofost-NP-maize-Rainfed red_sus_list_Yangtze_maize_rainfed_Red_14.txt meteolist_WFDE5_Yangtze_maize.txt redfertlist_Yangtze_maize_rainfed_Red_14.txt susirrilist_Yangtze_maize.txt
# ./wofost-NP-maize-Rainfed red_sus_list_Rhine_maize_rainfed_Red_14.txt meteolist_WFDE5_Rhine_maize.txt redfertlist_Rhine_maize_rainfed_Red_14.txt susirrilist_Rhine_maize.txt
# ./wofost-NP-maize-Rainfed red_sus_list_Indus_maize_rainfed_Red_14.txt meteolist_WFDE5_Indus_maize.txt redfertlist_Indus_maize_rainfed_Red_14.txt susirrilist_Indus_maize.txt
# ./wofost-NP-maize-Rainfed red_sus_list_LaPlata_maize_rainfed_Red_14.txt meteolist_WFDE5_LaPlata_maize.txt redfertlist_LaPlata_maize_rainfed_Red_14.txt susirrilist_LaPlata_maize.txt

# # # ======================= Rice
# ./wofost-NP-rice-Rainfed red_sus_list_Indus_mainrice_rainfed_Red_14.txt meteolist_WFDE5_Indus_mainrice.txt redfertlist_Indus_mainrice_rainfed_Red_14.txt susirrilist_Indus_mainrice.txt
# ./wofost-NP-rice-Rainfed red_sus_list_Yangtze_mainrice_rainfed_Red_14.txt meteolist_WFDE5_Yangtze_mainrice.txt redfertlist_Yangtze_mainrice_rainfed_Red_14.txt susirrilist_Yangtze_mainrice.txt
# ./wofost-NP-rice-Rainfed red_sus_list_Yangtze_secondrice_rainfed_Red_14.txt meteolist_WFDE5_Yangtze_secondrice.txt redfertlist_Yangtze_secondrice_rainfed_Red_14.txt susirrilist_Yangtze_secondrice.txt
# ./wofost-NP-rice-Rainfed red_sus_list_LaPlata_mainrice_rainfed_Red_14.txt meteolist_WFDE5_LaPlata_mainrice.txt redfertlist_LaPlata_mainrice_rainfed_Red_14.txt susirrilist_LaPlata_mainrice.txt

# # ======================= Soybean
# ./wofost-NP-soybean-Rainfed red_sus_list_Yangtze_soybean_rainfed_Red_14.txt meteolist_WFDE5_Yangtze_soybean.txt redfertlist_Yangtze_soybean_rainfed_Red_14.txt susirrilist_Yangtze_soybean.txt
# ./wofost-NP-soybean-Rainfed red_sus_list_LaPlata_soybean_rainfed_Red_14.txt meteolist_WFDE5_LaPlata_soybean.txt redfertlist_LaPlata_soybean_rainfed_Red_14.txt susirrilist_LaPlata_soybean.txt

# # ======================= Wheat
# ./wofost-NP-wheat-Rainfed red_sus_list_Rhine_winterwheat_rainfed_Red_14.txt meteolist_WFDE5_Rhine_winterwheat.txt redfertlist_Rhine_winterwheat_rainfed_Red_14.txt susirrilist_Rhine_winterwheat.txt
# ./wofost-NP-wheat-Rainfed red_sus_list_Indus_winterwheat_rainfed_Red_14.txt meteolist_WFDE5_Indus_winterwheat.txt redfertlist_Indus_winterwheat_rainfed_Red_14.txt susirrilist_Indus_winterwheat.txt
# ./wofost-NP-wheat-Rainfed red_sus_list_Yangtze_winterwheat_rainfed_Red_14.txt meteolist_WFDE5_Yangtze_winterwheat.txt redfertlist_Yangtze_winterwheat_rainfed_Red_14.txt susirrilist_Yangtze_winterwheat.txt
# ./wofost-NP-wheat-Rainfed red_sus_list_LaPlata_winterwheat_rainfed_Red_14.txt meteolist_WFDE5_LaPlata_winterwheat.txt redfertlist_LaPlata_winterwheat_rainfed_Red_14.txt susirrilist_LaPlata_winterwheat.txt




# # ======================= Maize
# ./wofost-NP-maize-Rainfed red_sus_list_Yangtze_maize_rainfed_Red_13.txt meteolist_WFDE5_Yangtze_maize.txt redfertlist_Yangtze_maize_rainfed_Red_13.txt susirrilist_Yangtze_maize.txt
# ./wofost-NP-maize-Rainfed red_sus_list_Rhine_maize_rainfed_Red_13.txt meteolist_WFDE5_Rhine_maize.txt redfertlist_Rhine_maize_rainfed_Red_13.txt susirrilist_Rhine_maize.txt
# ./wofost-NP-maize-Rainfed red_sus_list_Indus_maize_rainfed_Red_13.txt meteolist_WFDE5_Indus_maize.txt redfertlist_Indus_maize_rainfed_Red_13.txt susirrilist_Indus_maize.txt
# ./wofost-NP-maize-Rainfed red_sus_list_LaPlata_maize_rainfed_Red_13.txt meteolist_WFDE5_LaPlata_maize.txt redfertlist_LaPlata_maize_rainfed_Red_13.txt susirrilist_LaPlata_maize.txt

# # # ======================= Rice
# ./wofost-NP-rice-Rainfed red_sus_list_Indus_mainrice_rainfed_Red_13.txt meteolist_WFDE5_Indus_mainrice.txt redfertlist_Indus_mainrice_rainfed_Red_13.txt susirrilist_Indus_mainrice.txt
# ./wofost-NP-rice-Rainfed red_sus_list_Yangtze_mainrice_rainfed_Red_13.txt meteolist_WFDE5_Yangtze_mainrice.txt redfertlist_Yangtze_mainrice_rainfed_Red_13.txt susirrilist_Yangtze_mainrice.txt
# ./wofost-NP-rice-Rainfed red_sus_list_Yangtze_secondrice_rainfed_Red_13.txt meteolist_WFDE5_Yangtze_secondrice.txt redfertlist_Yangtze_secondrice_rainfed_Red_13.txt susirrilist_Yangtze_secondrice.txt
# ./wofost-NP-rice-Rainfed red_sus_list_LaPlata_mainrice_rainfed_Red_13.txt meteolist_WFDE5_LaPlata_mainrice.txt redfertlist_LaPlata_mainrice_rainfed_Red_13.txt susirrilist_LaPlata_mainrice.txt

# # ======================= Soybean
# ./wofost-NP-soybean-Rainfed red_sus_list_Yangtze_soybean_rainfed_Red_13.txt meteolist_WFDE5_Yangtze_soybean.txt redfertlist_Yangtze_soybean_rainfed_Red_13.txt susirrilist_Yangtze_soybean.txt
# ./wofost-NP-soybean-Rainfed red_sus_list_LaPlata_soybean_rainfed_Red_13.txt meteolist_WFDE5_LaPlata_soybean.txt redfertlist_LaPlata_soybean_rainfed_Red_13.txt susirrilist_LaPlata_soybean.txt

# # ======================= Wheat
# ./wofost-NP-wheat-Rainfed red_sus_list_Rhine_winterwheat_rainfed_Red_13.txt meteolist_WFDE5_Rhine_winterwheat.txt redfertlist_Rhine_winterwheat_rainfed_Red_13.txt susirrilist_Rhine_winterwheat.txt
# ./wofost-NP-wheat-Rainfed red_sus_list_Indus_winterwheat_rainfed_Red_13.txt meteolist_WFDE5_Indus_winterwheat.txt redfertlist_Indus_winterwheat_rainfed_Red_13.txt susirrilist_Indus_winterwheat.txt
# ./wofost-NP-wheat-Rainfed red_sus_list_Yangtze_winterwheat_rainfed_Red_13.txt meteolist_WFDE5_Yangtze_winterwheat.txt redfertlist_Yangtze_winterwheat_rainfed_Red_13.txt susirrilist_Yangtze_winterwheat.txt
# ./wofost-NP-wheat-Rainfed red_sus_list_LaPlata_winterwheat_rainfed_Red_13.txt meteolist_WFDE5_LaPlata_winterwheat.txt redfertlist_LaPlata_winterwheat_rainfed_Red_13.txt susirrilist_LaPlata_winterwheat.txt



# ======================= Maize
./wofost-NP-maize-Rainfed red_sus_list_Yangtze_maize_rainfed_Red_12.txt meteolist_WFDE5_Yangtze_maize.txt redfertlist_Yangtze_maize_rainfed_Red_12.txt susirrilist_Yangtze_maize.txt
./wofost-NP-maize-Rainfed red_sus_list_Rhine_maize_rainfed_Red_12.txt meteolist_WFDE5_Rhine_maize.txt redfertlist_Rhine_maize_rainfed_Red_12.txt susirrilist_Rhine_maize.txt
./wofost-NP-maize-Rainfed red_sus_list_Indus_maize_rainfed_Red_12.txt meteolist_WFDE5_Indus_maize.txt redfertlist_Indus_maize_rainfed_Red_12.txt susirrilist_Indus_maize.txt
./wofost-NP-maize-Rainfed red_sus_list_LaPlata_maize_rainfed_Red_12.txt meteolist_WFDE5_LaPlata_maize.txt redfertlist_LaPlata_maize_rainfed_Red_12.txt susirrilist_LaPlata_maize.txt

# # ======================= Rice
./wofost-NP-rice-Rainfed red_sus_list_Indus_mainrice_rainfed_Red_12.txt meteolist_WFDE5_Indus_mainrice.txt redfertlist_Indus_mainrice_rainfed_Red_12.txt susirrilist_Indus_mainrice.txt
./wofost-NP-rice-Rainfed red_sus_list_Yangtze_mainrice_rainfed_Red_12.txt meteolist_WFDE5_Yangtze_mainrice.txt redfertlist_Yangtze_mainrice_rainfed_Red_12.txt susirrilist_Yangtze_mainrice.txt
./wofost-NP-rice-Rainfed red_sus_list_Yangtze_secondrice_rainfed_Red_12.txt meteolist_WFDE5_Yangtze_secondrice.txt redfertlist_Yangtze_secondrice_rainfed_Red_12.txt susirrilist_Yangtze_secondrice.txt
./wofost-NP-rice-Rainfed red_sus_list_LaPlata_mainrice_rainfed_Red_12.txt meteolist_WFDE5_LaPlata_mainrice.txt redfertlist_LaPlata_mainrice_rainfed_Red_12.txt susirrilist_LaPlata_mainrice.txt

# ======================= Soybean
./wofost-NP-soybean-Rainfed red_sus_list_Yangtze_soybean_rainfed_Red_12.txt meteolist_WFDE5_Yangtze_soybean.txt redfertlist_Yangtze_soybean_rainfed_Red_12.txt susirrilist_Yangtze_soybean.txt
./wofost-NP-soybean-Rainfed red_sus_list_LaPlata_soybean_rainfed_Red_12.txt meteolist_WFDE5_LaPlata_soybean.txt redfertlist_LaPlata_soybean_rainfed_Red_12.txt susirrilist_LaPlata_soybean.txt

# ======================= Wheat
./wofost-NP-wheat-Rainfed red_sus_list_Rhine_winterwheat_rainfed_Red_12.txt meteolist_WFDE5_Rhine_winterwheat.txt redfertlist_Rhine_winterwheat_rainfed_Red_12.txt susirrilist_Rhine_winterwheat.txt
./wofost-NP-wheat-Rainfed red_sus_list_Indus_winterwheat_rainfed_Red_12.txt meteolist_WFDE5_Indus_winterwheat.txt redfertlist_Indus_winterwheat_rainfed_Red_12.txt susirrilist_Indus_winterwheat.txt
./wofost-NP-wheat-Rainfed red_sus_list_Yangtze_winterwheat_rainfed_Red_12.txt meteolist_WFDE5_Yangtze_winterwheat.txt redfertlist_Yangtze_winterwheat_rainfed_Red_12.txt susirrilist_Yangtze_winterwheat.txt
./wofost-NP-wheat-Rainfed red_sus_list_LaPlata_winterwheat_rainfed_Red_12.txt meteolist_WFDE5_LaPlata_winterwheat.txt redfertlist_LaPlata_winterwheat_rainfed_Red_12.txt susirrilist_LaPlata_winterwheat.txt




# # ======================= Maize
# ./wofost-NP-maize-Rainfed red_sus_list_Yangtze_maize_rainfed_Red_11.txt meteolist_WFDE5_Yangtze_maize.txt redfertlist_Yangtze_maize_rainfed_Red_11.txt susirrilist_Yangtze_maize.txt
# ./wofost-NP-maize-Rainfed red_sus_list_Rhine_maize_rainfed_Red_11.txt meteolist_WFDE5_Rhine_maize.txt redfertlist_Rhine_maize_rainfed_Red_11.txt susirrilist_Rhine_maize.txt
# ./wofost-NP-maize-Rainfed red_sus_list_Indus_maize_rainfed_Red_11.txt meteolist_WFDE5_Indus_maize.txt redfertlist_Indus_maize_rainfed_Red_11.txt susirrilist_Indus_maize.txt
# ./wofost-NP-maize-Rainfed red_sus_list_LaPlata_maize_rainfed_Red_11.txt meteolist_WFDE5_LaPlata_maize.txt redfertlist_LaPlata_maize_rainfed_Red_11.txt susirrilist_LaPlata_maize.txt

# # # ======================= Rice
# ./wofost-NP-rice-Rainfed red_sus_list_Indus_mainrice_rainfed_Red_11.txt meteolist_WFDE5_Indus_mainrice.txt redfertlist_Indus_mainrice_rainfed_Red_11.txt susirrilist_Indus_mainrice.txt
# ./wofost-NP-rice-Rainfed red_sus_list_Yangtze_mainrice_rainfed_Red_11.txt meteolist_WFDE5_Yangtze_mainrice.txt redfertlist_Yangtze_mainrice_rainfed_Red_11.txt susirrilist_Yangtze_mainrice.txt
# ./wofost-NP-rice-Rainfed red_sus_list_Yangtze_secondrice_rainfed_Red_11.txt meteolist_WFDE5_Yangtze_secondrice.txt redfertlist_Yangtze_secondrice_rainfed_Red_11.txt susirrilist_Yangtze_secondrice.txt
# ./wofost-NP-rice-Rainfed red_sus_list_LaPlata_mainrice_rainfed_Red_11.txt meteolist_WFDE5_LaPlata_mainrice.txt redfertlist_LaPlata_mainrice_rainfed_Red_11.txt susirrilist_LaPlata_mainrice.txt

# # ======================= Soybean
# ./wofost-NP-soybean-Rainfed red_sus_list_Yangtze_soybean_rainfed_Red_11.txt meteolist_WFDE5_Yangtze_soybean.txt redfertlist_Yangtze_soybean_rainfed_Red_11.txt susirrilist_Yangtze_soybean.txt
# ./wofost-NP-soybean-Rainfed red_sus_list_LaPlata_soybean_rainfed_Red_11.txt meteolist_WFDE5_LaPlata_soybean.txt redfertlist_LaPlata_soybean_rainfed_Red_11.txt susirrilist_LaPlata_soybean.txt

# # ======================= Wheat
# ./wofost-NP-wheat-Rainfed red_sus_list_Rhine_winterwheat_rainfed_Red_11.txt meteolist_WFDE5_Rhine_winterwheat.txt redfertlist_Rhine_winterwheat_rainfed_Red_11.txt susirrilist_Rhine_winterwheat.txt
# ./wofost-NP-wheat-Rainfed red_sus_list_Indus_winterwheat_rainfed_Red_11.txt meteolist_WFDE5_Indus_winterwheat.txt redfertlist_Indus_winterwheat_rainfed_Red_11.txt susirrilist_Indus_winterwheat.txt
# ./wofost-NP-wheat-Rainfed red_sus_list_Yangtze_winterwheat_rainfed_Red_11.txt meteolist_WFDE5_Yangtze_winterwheat.txt redfertlist_Yangtze_winterwheat_rainfed_Red_11.txt susirrilist_Yangtze_winterwheat.txt
# ./wofost-NP-wheat-Rainfed red_sus_list_LaPlata_winterwheat_rainfed_Red_11.txt meteolist_WFDE5_LaPlata_winterwheat.txt redfertlist_LaPlata_winterwheat_rainfed_Red_11.txt susirrilist_LaPlata_winterwheat.txt




# # ======================= Maize
# ./wofost-NP-maize-Rainfed red_sus_list_Yangtze_maize_rainfed_Red_09.txt meteolist_WFDE5_Yangtze_maize.txt redfertlist_Yangtze_maize_rainfed_Red_09.txt susirrilist_Yangtze_maize.txt
# ./wofost-NP-maize-Rainfed red_sus_list_Rhine_maize_rainfed_Red_09.txt meteolist_WFDE5_Rhine_maize.txt redfertlist_Rhine_maize_rainfed_Red_09.txt susirrilist_Rhine_maize.txt
# ./wofost-NP-maize-Rainfed red_sus_list_Indus_maize_rainfed_Red_09.txt meteolist_WFDE5_Indus_maize.txt redfertlist_Indus_maize_rainfed_Red_09.txt susirrilist_Indus_maize.txt
# ./wofost-NP-maize-Rainfed red_sus_list_LaPlata_maize_rainfed_Red_09.txt meteolist_WFDE5_LaPlata_maize.txt redfertlist_LaPlata_maize_rainfed_Red_09.txt susirrilist_LaPlata_maize.txt

# # # ======================= Rice
# ./wofost-NP-rice-Rainfed red_sus_list_Indus_mainrice_rainfed_Red_09.txt meteolist_WFDE5_Indus_mainrice.txt redfertlist_Indus_mainrice_rainfed_Red_09.txt susirrilist_Indus_mainrice.txt
# ./wofost-NP-rice-Rainfed red_sus_list_Yangtze_mainrice_rainfed_Red_09.txt meteolist_WFDE5_Yangtze_mainrice.txt redfertlist_Yangtze_mainrice_rainfed_Red_09.txt susirrilist_Yangtze_mainrice.txt
# ./wofost-NP-rice-Rainfed red_sus_list_Yangtze_secondrice_rainfed_Red_09.txt meteolist_WFDE5_Yangtze_secondrice.txt redfertlist_Yangtze_secondrice_rainfed_Red_09.txt susirrilist_Yangtze_secondrice.txt
# ./wofost-NP-rice-Rainfed red_sus_list_LaPlata_mainrice_rainfed_Red_09.txt meteolist_WFDE5_LaPlata_mainrice.txt redfertlist_LaPlata_mainrice_rainfed_Red_09.txt susirrilist_LaPlata_mainrice.txt

# # ======================= Soybean
# ./wofost-NP-soybean-Rainfed red_sus_list_Yangtze_soybean_rainfed_Red_09.txt meteolist_WFDE5_Yangtze_soybean.txt redfertlist_Yangtze_soybean_rainfed_Red_09.txt susirrilist_Yangtze_soybean.txt
# ./wofost-NP-soybean-Rainfed red_sus_list_LaPlata_soybean_rainfed_Red_09.txt meteolist_WFDE5_LaPlata_soybean.txt redfertlist_LaPlata_soybean_rainfed_Red_09.txt susirrilist_LaPlata_soybean.txt

# # ======================= Wheat
# ./wofost-NP-wheat-Rainfed red_sus_list_Rhine_winterwheat_rainfed_Red_09.txt meteolist_WFDE5_Rhine_winterwheat.txt redfertlist_Rhine_winterwheat_rainfed_Red_09.txt susirrilist_Rhine_winterwheat.txt
# ./wofost-NP-wheat-Rainfed red_sus_list_Indus_winterwheat_rainfed_Red_09.txt meteolist_WFDE5_Indus_winterwheat.txt redfertlist_Indus_winterwheat_rainfed_Red_09.txt susirrilist_Indus_winterwheat.txt
# ./wofost-NP-wheat-Rainfed red_sus_list_Yangtze_winterwheat_rainfed_Red_09.txt meteolist_WFDE5_Yangtze_winterwheat.txt redfertlist_Yangtze_winterwheat_rainfed_Red_09.txt susirrilist_Yangtze_winterwheat.txt
# ./wofost-NP-wheat-Rainfed red_sus_list_LaPlata_winterwheat_rainfed_Red_09.txt meteolist_WFDE5_LaPlata_winterwheat.txt redfertlist_LaPlata_winterwheat_rainfed_Red_09.txt susirrilist_LaPlata_winterwheat.txt



# ======================= Maize
./wofost-NP-maize-Rainfed red_sus_list_Yangtze_maize_rainfed_Red_08.txt meteolist_WFDE5_Yangtze_maize.txt redfertlist_Yangtze_maize_rainfed_Red_08.txt susirrilist_Yangtze_maize.txt
./wofost-NP-maize-Rainfed red_sus_list_Rhine_maize_rainfed_Red_08.txt meteolist_WFDE5_Rhine_maize.txt redfertlist_Rhine_maize_rainfed_Red_08.txt susirrilist_Rhine_maize.txt
./wofost-NP-maize-Rainfed red_sus_list_Indus_maize_rainfed_Red_08.txt meteolist_WFDE5_Indus_maize.txt redfertlist_Indus_maize_rainfed_Red_08.txt susirrilist_Indus_maize.txt
./wofost-NP-maize-Rainfed red_sus_list_LaPlata_maize_rainfed_Red_08.txt meteolist_WFDE5_LaPlata_maize.txt redfertlist_LaPlata_maize_rainfed_Red_08.txt susirrilist_LaPlata_maize.txt

# # ======================= Rice
./wofost-NP-rice-Rainfed red_sus_list_Indus_mainrice_rainfed_Red_08.txt meteolist_WFDE5_Indus_mainrice.txt redfertlist_Indus_mainrice_rainfed_Red_08.txt susirrilist_Indus_mainrice.txt
./wofost-NP-rice-Rainfed red_sus_list_Yangtze_mainrice_rainfed_Red_08.txt meteolist_WFDE5_Yangtze_mainrice.txt redfertlist_Yangtze_mainrice_rainfed_Red_08.txt susirrilist_Yangtze_mainrice.txt
./wofost-NP-rice-Rainfed red_sus_list_Yangtze_secondrice_rainfed_Red_08.txt meteolist_WFDE5_Yangtze_secondrice.txt redfertlist_Yangtze_secondrice_rainfed_Red_08.txt susirrilist_Yangtze_secondrice.txt
./wofost-NP-rice-Rainfed red_sus_list_LaPlata_mainrice_rainfed_Red_08.txt meteolist_WFDE5_LaPlata_mainrice.txt redfertlist_LaPlata_mainrice_rainfed_Red_08.txt susirrilist_LaPlata_mainrice.txt

# ======================= Soybean
./wofost-NP-soybean-Rainfed red_sus_list_Yangtze_soybean_rainfed_Red_08.txt meteolist_WFDE5_Yangtze_soybean.txt redfertlist_Yangtze_soybean_rainfed_Red_08.txt susirrilist_Yangtze_soybean.txt
./wofost-NP-soybean-Rainfed red_sus_list_LaPlata_soybean_rainfed_Red_08.txt meteolist_WFDE5_LaPlata_soybean.txt redfertlist_LaPlata_soybean_rainfed_Red_08.txt susirrilist_LaPlata_soybean.txt

# ======================= Wheat
./wofost-NP-wheat-Rainfed red_sus_list_Rhine_winterwheat_rainfed_Red_08.txt meteolist_WFDE5_Rhine_winterwheat.txt redfertlist_Rhine_winterwheat_rainfed_Red_08.txt susirrilist_Rhine_winterwheat.txt
./wofost-NP-wheat-Rainfed red_sus_list_Indus_winterwheat_rainfed_Red_08.txt meteolist_WFDE5_Indus_winterwheat.txt redfertlist_Indus_winterwheat_rainfed_Red_08.txt susirrilist_Indus_winterwheat.txt
./wofost-NP-wheat-Rainfed red_sus_list_Yangtze_winterwheat_rainfed_Red_08.txt meteolist_WFDE5_Yangtze_winterwheat.txt redfertlist_Yangtze_winterwheat_rainfed_Red_08.txt susirrilist_Yangtze_winterwheat.txt
./wofost-NP-wheat-Rainfed red_sus_list_LaPlata_winterwheat_rainfed_Red_08.txt meteolist_WFDE5_LaPlata_winterwheat.txt redfertlist_LaPlata_winterwheat_rainfed_Red_08.txt susirrilist_LaPlata_winterwheat.txt


# ======================= Maize
./wofost-NP-maize-Rainfed red_sus_list_Yangtze_maize_rainfed_Red_06.txt meteolist_WFDE5_Yangtze_maize.txt redfertlist_Yangtze_maize_rainfed_Red_06.txt susirrilist_Yangtze_maize.txt
./wofost-NP-maize-Rainfed red_sus_list_Rhine_maize_rainfed_Red_06.txt meteolist_WFDE5_Rhine_maize.txt redfertlist_Rhine_maize_rainfed_Red_06.txt susirrilist_Rhine_maize.txt
./wofost-NP-maize-Rainfed red_sus_list_Indus_maize_rainfed_Red_06.txt meteolist_WFDE5_Indus_maize.txt redfertlist_Indus_maize_rainfed_Red_06.txt susirrilist_Indus_maize.txt
./wofost-NP-maize-Rainfed red_sus_list_LaPlata_maize_rainfed_Red_06.txt meteolist_WFDE5_LaPlata_maize.txt redfertlist_LaPlata_maize_rainfed_Red_06.txt susirrilist_LaPlata_maize.txt

# # ======================= Rice
./wofost-NP-rice-Rainfed red_sus_list_Indus_mainrice_rainfed_Red_06.txt meteolist_WFDE5_Indus_mainrice.txt redfertlist_Indus_mainrice_rainfed_Red_06.txt susirrilist_Indus_mainrice.txt
./wofost-NP-rice-Rainfed red_sus_list_Yangtze_mainrice_rainfed_Red_06.txt meteolist_WFDE5_Yangtze_mainrice.txt redfertlist_Yangtze_mainrice_rainfed_Red_06.txt susirrilist_Yangtze_mainrice.txt
./wofost-NP-rice-Rainfed red_sus_list_Yangtze_secondrice_rainfed_Red_06.txt meteolist_WFDE5_Yangtze_secondrice.txt redfertlist_Yangtze_secondrice_rainfed_Red_06.txt susirrilist_Yangtze_secondrice.txt
./wofost-NP-rice-Rainfed red_sus_list_LaPlata_mainrice_rainfed_Red_06.txt meteolist_WFDE5_LaPlata_mainrice.txt redfertlist_LaPlata_mainrice_rainfed_Red_06.txt susirrilist_LaPlata_mainrice.txt

# ======================= Soybean
./wofost-NP-soybean-Rainfed red_sus_list_Yangtze_soybean_rainfed_Red_06.txt meteolist_WFDE5_Yangtze_soybean.txt redfertlist_Yangtze_soybean_rainfed_Red_06.txt susirrilist_Yangtze_soybean.txt
./wofost-NP-soybean-Rainfed red_sus_list_LaPlata_soybean_rainfed_Red_06.txt meteolist_WFDE5_LaPlata_soybean.txt redfertlist_LaPlata_soybean_rainfed_Red_06.txt susirrilist_LaPlata_soybean.txt

# ======================= Wheat
./wofost-NP-wheat-Rainfed red_sus_list_Rhine_winterwheat_rainfed_Red_06.txt meteolist_WFDE5_Rhine_winterwheat.txt redfertlist_Rhine_winterwheat_rainfed_Red_06.txt susirrilist_Rhine_winterwheat.txt
./wofost-NP-wheat-Rainfed red_sus_list_Indus_winterwheat_rainfed_Red_06.txt meteolist_WFDE5_Indus_winterwheat.txt redfertlist_Indus_winterwheat_rainfed_Red_06.txt susirrilist_Indus_winterwheat.txt
./wofost-NP-wheat-Rainfed red_sus_list_Yangtze_winterwheat_rainfed_Red_06.txt meteolist_WFDE5_Yangtze_winterwheat.txt redfertlist_Yangtze_winterwheat_rainfed_Red_06.txt susirrilist_Yangtze_winterwheat.txt
./wofost-NP-wheat-Rainfed red_sus_list_LaPlata_winterwheat_rainfed_Red_06.txt meteolist_WFDE5_LaPlata_winterwheat.txt redfertlist_LaPlata_winterwheat_rainfed_Red_06.txt susirrilist_LaPlata_winterwheat.txt



# ======================= Maize
./wofost-NP-maize-Rainfed red_sus_list_Yangtze_maize_rainfed_Red_04.txt meteolist_WFDE5_Yangtze_maize.txt redfertlist_Yangtze_maize_rainfed_Red_04.txt susirrilist_Yangtze_maize.txt
./wofost-NP-maize-Rainfed red_sus_list_Rhine_maize_rainfed_Red_04.txt meteolist_WFDE5_Rhine_maize.txt redfertlist_Rhine_maize_rainfed_Red_04.txt susirrilist_Rhine_maize.txt
./wofost-NP-maize-Rainfed red_sus_list_Indus_maize_rainfed_Red_04.txt meteolist_WFDE5_Indus_maize.txt redfertlist_Indus_maize_rainfed_Red_04.txt susirrilist_Indus_maize.txt
./wofost-NP-maize-Rainfed red_sus_list_LaPlata_maize_rainfed_Red_04.txt meteolist_WFDE5_LaPlata_maize.txt redfertlist_LaPlata_maize_rainfed_Red_04.txt susirrilist_LaPlata_maize.txt

# # ======================= Rice
./wofost-NP-rice-Rainfed red_sus_list_Indus_mainrice_rainfed_Red_04.txt meteolist_WFDE5_Indus_mainrice.txt redfertlist_Indus_mainrice_rainfed_Red_04.txt susirrilist_Indus_mainrice.txt
./wofost-NP-rice-Rainfed red_sus_list_Yangtze_mainrice_rainfed_Red_04.txt meteolist_WFDE5_Yangtze_mainrice.txt redfertlist_Yangtze_mainrice_rainfed_Red_04.txt susirrilist_Yangtze_mainrice.txt
./wofost-NP-rice-Rainfed red_sus_list_Yangtze_secondrice_rainfed_Red_04.txt meteolist_WFDE5_Yangtze_secondrice.txt redfertlist_Yangtze_secondrice_rainfed_Red_04.txt susirrilist_Yangtze_secondrice.txt
./wofost-NP-rice-Rainfed red_sus_list_LaPlata_mainrice_rainfed_Red_04.txt meteolist_WFDE5_LaPlata_mainrice.txt redfertlist_LaPlata_mainrice_rainfed_Red_04.txt susirrilist_LaPlata_mainrice.txt

# ======================= Soybean
./wofost-NP-soybean-Rainfed red_sus_list_Yangtze_soybean_rainfed_Red_04.txt meteolist_WFDE5_Yangtze_soybean.txt redfertlist_Yangtze_soybean_rainfed_Red_04.txt susirrilist_Yangtze_soybean.txt
./wofost-NP-soybean-Rainfed red_sus_list_LaPlata_soybean_rainfed_Red_04.txt meteolist_WFDE5_LaPlata_soybean.txt redfertlist_LaPlata_soybean_rainfed_Red_04.txt susirrilist_LaPlata_soybean.txt

# ======================= Wheat
./wofost-NP-wheat-Rainfed red_sus_list_Rhine_winterwheat_rainfed_Red_04.txt meteolist_WFDE5_Rhine_winterwheat.txt redfertlist_Rhine_winterwheat_rainfed_Red_04.txt susirrilist_Rhine_winterwheat.txt
./wofost-NP-wheat-Rainfed red_sus_list_Indus_winterwheat_rainfed_Red_04.txt meteolist_WFDE5_Indus_winterwheat.txt redfertlist_Indus_winterwheat_rainfed_Red_04.txt susirrilist_Indus_winterwheat.txt
./wofost-NP-wheat-Rainfed red_sus_list_Yangtze_winterwheat_rainfed_Red_04.txt meteolist_WFDE5_Yangtze_winterwheat.txt redfertlist_Yangtze_winterwheat_rainfed_Red_04.txt susirrilist_Yangtze_winterwheat.txt
./wofost-NP-wheat-Rainfed red_sus_list_LaPlata_winterwheat_rainfed_Red_04.txt meteolist_WFDE5_LaPlata_winterwheat.txt redfertlist_LaPlata_winterwheat_rainfed_Red_04.txt susirrilist_LaPlata_winterwheat.txt


# ======================= Maize
./wofost-NP-maize-Rainfed red_sus_list_Yangtze_maize_rainfed_Red_02.txt meteolist_WFDE5_Yangtze_maize.txt redfertlist_Yangtze_maize_rainfed_Red_02.txt susirrilist_Yangtze_maize.txt
./wofost-NP-maize-Rainfed red_sus_list_Rhine_maize_rainfed_Red_02.txt meteolist_WFDE5_Rhine_maize.txt redfertlist_Rhine_maize_rainfed_Red_02.txt susirrilist_Rhine_maize.txt
./wofost-NP-maize-Rainfed red_sus_list_Indus_maize_rainfed_Red_02.txt meteolist_WFDE5_Indus_maize.txt redfertlist_Indus_maize_rainfed_Red_02.txt susirrilist_Indus_maize.txt
./wofost-NP-maize-Rainfed red_sus_list_LaPlata_maize_rainfed_Red_02.txt meteolist_WFDE5_LaPlata_maize.txt redfertlist_LaPlata_maize_rainfed_Red_02.txt susirrilist_LaPlata_maize.txt

# # ======================= Rice
./wofost-NP-rice-Rainfed red_sus_list_Indus_mainrice_rainfed_Red_02.txt meteolist_WFDE5_Indus_mainrice.txt redfertlist_Indus_mainrice_rainfed_Red_02.txt susirrilist_Indus_mainrice.txt
./wofost-NP-rice-Rainfed red_sus_list_Yangtze_mainrice_rainfed_Red_02.txt meteolist_WFDE5_Yangtze_mainrice.txt redfertlist_Yangtze_mainrice_rainfed_Red_02.txt susirrilist_Yangtze_mainrice.txt
./wofost-NP-rice-Rainfed red_sus_list_Yangtze_secondrice_rainfed_Red_02.txt meteolist_WFDE5_Yangtze_secondrice.txt redfertlist_Yangtze_secondrice_rainfed_Red_02.txt susirrilist_Yangtze_secondrice.txt
./wofost-NP-rice-Rainfed red_sus_list_LaPlata_mainrice_rainfed_Red_02.txt meteolist_WFDE5_LaPlata_mainrice.txt redfertlist_LaPlata_mainrice_rainfed_Red_02.txt susirrilist_LaPlata_mainrice.txt

# ======================= Soybean
./wofost-NP-soybean-Rainfed red_sus_list_Yangtze_soybean_rainfed_Red_02.txt meteolist_WFDE5_Yangtze_soybean.txt redfertlist_Yangtze_soybean_rainfed_Red_02.txt susirrilist_Yangtze_soybean.txt
./wofost-NP-soybean-Rainfed red_sus_list_LaPlata_soybean_rainfed_Red_02.txt meteolist_WFDE5_LaPlata_soybean.txt redfertlist_LaPlata_soybean_rainfed_Red_02.txt susirrilist_LaPlata_soybean.txt

# ======================= Wheat
./wofost-NP-wheat-Rainfed red_sus_list_Rhine_winterwheat_rainfed_Red_02.txt meteolist_WFDE5_Rhine_winterwheat.txt redfertlist_Rhine_winterwheat_rainfed_Red_02.txt susirrilist_Rhine_winterwheat.txt
./wofost-NP-wheat-Rainfed red_sus_list_Indus_winterwheat_rainfed_Red_02.txt meteolist_WFDE5_Indus_winterwheat.txt redfertlist_Indus_winterwheat_rainfed_Red_02.txt susirrilist_Indus_winterwheat.txt
./wofost-NP-wheat-Rainfed red_sus_list_Yangtze_winterwheat_rainfed_Red_02.txt meteolist_WFDE5_Yangtze_winterwheat.txt redfertlist_Yangtze_winterwheat_rainfed_Red_02.txt susirrilist_Yangtze_winterwheat.txt
./wofost-NP-wheat-Rainfed red_sus_list_LaPlata_winterwheat_rainfed_Red_02.txt meteolist_WFDE5_LaPlata_winterwheat.txt redfertlist_LaPlata_winterwheat_rainfed_Red_02.txt susirrilist_LaPlata_winterwheat.txt