#!/bin/bash
#-----------------------------Mail address-----------------------------
#SBATCH --mail-user=yixuan.zhou@wur.nl
#SBATCH --mail-type=END
#-----------------------------Output files-----------------------------
#SBATCH --output=/lustre/nobackup/WUR/ESG/zhou111/WOFOST-Nutrient/HPC_Report/output_%j.txt
#SBATCH --error=/lustre/nobackup/WUR/ESG/zhou111/WOFOST-Nutrient/HPC_Report/error_output_%j.txt
#-----------------------------Other information------------------------

#-----------------------------Required resources-----------------------
#SBATCH --time=200
#SBATCH --mem=500000

#-----------------------------Environment, Operations and Job steps----
#load modules
module load netcdf
#----------------------------Run WOFOST simulations-----------------------
# echo "Current directory: $(pwd)"

# Maize Maximum CycleLength = 150
# ./wofost-Ave-Yp list_Rhine_maize_Yp.txt meteolist_WFDE5_Rhine_maize.txt 
# ./wofost-Ave-Yp list_Indus_maize_Yp.txt meteolist_WFDE5_Indus_maize.txt 
# ./wofost-Ave-Yp list_LaPlata_maize_Yp.txt meteolist_WFDE5_LaPlata_maize.txt 
# ./wofost-Ave-Yp list_Yangtze_maize_Yp.txt meteolist_WFDE5_Yangtze_maize.txt 

# Rice Maximum CycleLength = 180
./wofost-Ave-Yp list_Indus_mainrice.txt meteolist_WFDE5_Indus_mainrice.txt 
./wofost-Ave-Yp list_LaPlata_mainrice.txt meteolist_WFDE5_LaPlata_mainrice.txt 
./wofost-Ave-Yp list_Yangtze_mainrice.txt meteolist_WFDE5_Yangtze_mainrice.txt 
./wofost-Ave-Yp list_Yangtze_secondrice.txt meteolist_WFDE5_Yangtze_secondrice.txt 

# Wheat Maximum CycleLength = 300
# ./wofost-Ave-Yp list_Yangtze_winterwheat_Yp.txt meteolist_WFDE5_Yangtze_winterwheat.txt 
# ./wofost-Ave-Yp list_Rhine_winterwheat_Yp.txt meteolist_WFDE5_Rhine_winterwheat.txt 
# ./wofost-Ave-Yp list_Indus_winterwheat_Yp.txt meteolist_WFDE5_Indus_winterwheat.txt 
# ./wofost-Ave-Yp list_LaPlata_winterwheat_Yp.txt meteolist_WFDE5_LaPlata_winterwheat.txt 

# Soybean CycleLength = 140
# ./wofost-Ave-Yp list_Yangtze_soybean_Yp.txt meteolist_WFDE5_Yangtze_soybean.txt 
# ./wofost-Ave-Yp list_LaPlata_soybean_Yp.txt meteolist_WFDE5_LaPlata_soybean.txt 