#!/bin/bash
#-----------------------------Mail address-----------------------------
#SBATCH --mail-user=yixuan.zhou@wur.nl
#SBATCH --mail-type=END
#-----------------------------Output files-----------------------------
#SBATCH --output=/lustre/nobackup/WUR/ESG/zhou111/HPC_Report/output_%j.txt
#SBATCH --error=/lustre/nobackup/WUR/ESG/zhou111/HPC_Report/error_output_%j.txt
#-----------------------------Other information------------------------

#-----------------------------Required resources-----------------------
#SBATCH --time=200
#SBATCH --mem=500000

#-----------------------------Environment, Operations and Job steps----
#load modules
module load netcdf
#----------------------------Run WOFOST simulations-----------------------
echo "Current directory: $(pwd)"

# Maize Maximum CycleLength = 160
./wofost-S1-maize list_Rhine_maize.txt meteolist_WFDE5_Rhine_maize.txt 
./wofost-S1-maize list_LaPlata_maize.txt meteolist_WFDE5_LaPlata_maize.txt 
./wofost-S1-maize list_Yangtze_maize.txt meteolist_WFDE5_Yangtze_maize.txt 
./wofost-S1-maize list_Indus_maize.txt meteolist_WFDE5_Indus_maize.txt 

# Rice Maximum CycleLength = 180
# ./wofost-S1-rice list_Rhine_mainrice.txt meteolist_WFDE5_Rhine_mainrice.txt 
# ./wofost-S1-rice list_LaPlata_mainrice.txt meteolist_WFDE5_LaPlata_mainrice.txt 
# ./wofost-S1-rice list_Yangtze_mainrice.txt meteolist_WFDE5_Yangtze_mainrice.txt 
# ./wofost-S1-rice list_Yangtze_secondrice.txt meteolist_WFDE5_Yangtze_secondrice.txt 

# Wheat Maximum CycleLength = 270
# ./wofost-S1-winterwheat list_Rhine_wheat.txt meteolist_WFDE5_Rhine_wheat.txt 
# ./wofost-S1-winterwheat list_LaPlata_wheat.txt meteolist_WFDE5_LaPlata_wheat.txt 
# ./wofost-S1-winterwheat list_Yangtze_wheat.txt meteolist_WFDE5_Yangtze_wheat.txt 
# ./wofost-S1-winterwheat list_Indus_wheat.txt meteolist_WFDE5_Indus_wheat.txt 

# Soybean CycleLength = 150
# ./wofost-S1-soybean list_Yangtze_soybean.txt meteolist_WFDE5_Yangtze_soybean.txt 
# ./wofost-S1-soybean list_LaPlata_soybean.txt meteolist_WFDE5_LaPlata_soybean.txt 