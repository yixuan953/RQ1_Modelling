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

# Maize
# ./wofost-NP-maize-Yp list_Yangtze_maize.txt meteolist_WFDE5_Yangtze_maize.txt fertlist_Yangtze_maize.txt irrilist_Yangtze_maize.txt
# ./wofost-NP-maize-Yp list_Rhine_maize.txt meteolist_WFDE5_Rhine_maize.txt fertlist_Rhine_maize.txt irrilist_Rhine_maize.txt
# ./wofost-NP-maize-Yp list_Indus_maize.txt meteolist_WFDE5_Indus_maize.txt fertlist_Indus_maize.txt irrilist_Indus_maize.txt
# ./wofost-NP-maize-Yp list_LaPlata_maize.txt meteolist_WFDE5_LaPlata_maize.txt fertlist_LaPlata_maize.txt irrilist_LaPlata_maize.txt

# ./wofost-NP-maize-wl list_Yangtze_maize.txt meteolist_WFDE5_Yangtze_maize.txt fertlist_Yangtze_maize.txt irrilist_Yangtze_maize.txt
# ./wofost-NP-maize-wl list_Rhine_maize.txt meteolist_WFDE5_Rhine_maize.txt fertlist_Rhine_maize.txt irrilist_Rhine_maize.txt
# ./wofost-NP-maize-wl list_Indus_maize.txt meteolist_WFDE5_Indus_maize.txt fertlist_Indus_maize.txt irrilist_Indus_maize.txt
# ./wofost-NP-maize-wl list_LaPlata_maize.txt meteolist_WFDE5_LaPlata_maize.txt fertlist_LaPlata_maize.txt irrilist_LaPlata_maize.txt

./wofost-NP-maize list_Rhine_maize.txt meteolist_WFDE5_Rhine_maize.txt fertlist_Rhine_maize.txt irrilist_Rhine_maize.txt
./wofost-NP-maize list_LaPlata_maize.txt meteolist_WFDE5_LaPlata_maize.txt fertlist_LaPlata_maize.txt irrilist_LaPlata_maize.txt
./wofost-NP-maize list_Yangtze_maize.txt meteolist_WFDE5_Yangtze_maize.txt fertlist_Yangtze_maize.txt irrilist_Yangtze_maize.txt
./wofost-NP-maize list_Indus_maize.txt meteolist_WFDE5_Indus_maize.txt fertlist_Indus_maize.txt irrilist_Indus_maize.txt


# Rice
# ./wofost-NP-rice list_Indus_mainrice.txt meteolist_WFDE5_Indus_mainrice.txt fertlist_Indus_mainrice.txt irrilist_Indus_mainrice.txt
# ./wofost-NP-rice list_Yangtze_mainrice.txt meteolist_WFDE5_Yangtze_mainrice.txt fertlist_Yangtze_mainrice.txt irrilist_Yangtze_mainrice.txt
# ./wofost-NP-rice list_Yangtze_secondrice.txt meteolist_WFDE5_Yangtze_secondrice.txt fertlist_Yangtze_secondrice.txt irrilist_Yangtze_secondrice.txt
# ./wofost-NP-rice list_LaPlata_mainrice.txt meteolist_WFDE5_LaPlata_mainrice.txt fertlist_LaPlata_mainrice.txt irrilist_LaPlata_mainrice.txt

# # Soybean
# ./wofost-NP-soybean list_Yangtze_soybean.txt meteolist_WFDE5_Yangtze_soybean.txt fertlist_Yangtze_soybean.txt irrilist_Yangtze_soybean.txt
# ./wofost-NP-soybean list_LaPlata_soybean.txt meteolist_WFDE5_LaPlata_soybean.txt fertlist_LaPlata_soybean.txt irrilist_LaPlata_soybean.txt

# Wheat
# ./wofost-NP-wheat list_Rhine_wheat.txt meteolist_WFDE5_Rhine_wheat.txt fertlist_Rhine_winterwheat.txt irrilist_Rhine_winterwheat.txt
# ./wofost-NP-wheat list_Indus_wheat.txt meteolist_WFDE5_Indus_wheat.txt fertlist_Indus_winterwheat.txt irrilist_Indus_winterwheat.txt
# ./wofost-NP-wheat list_Yangtze_wheat.txt meteolist_WFDE5_Yangtze_wheat.txt fertlist_Yangtze_winterwheat.txt irrilist_Yangtze_winterwheat.txt
# ./wofost-NP-wheat list_LaPlata_wheat.txt meteolist_WFDE5_LaPlata_wheat.txt fertlist_LaPlata_winterwheat.txt irrilist_LaPlata_winterwheat.txt