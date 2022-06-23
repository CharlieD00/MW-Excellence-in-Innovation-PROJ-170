#!/bin/bash
#SBATCH --time=24:00:00
#SBATCH --nodes=1
#SBATCH --cpus-per-task=4
#SBATCH --mem-per-cpu=6G
#SBATCH --job-name=HumanoidWalkerMoreDof
#SBATCH --mail-user=cddarlington1@sheffield.ac.uk
#SBATCH --mail-type=BEGIN,FAIL,TIME_LIMIT_90
#SBATCH --verbose
module load MATLAB/2021a
matlab -nodesktop -nodisplay -nosplash -r CH_humanoid_walker_rl_train
