#!/bin/bash

#SBATCH --get-user-env
#SBATCH --mail-user=merondun@bio.lmu.de
#SBATCH --clusters=biohpc_gen
#SBATCH --partition=biohpc_gen_normal
#SBATCH --cpus-per-task=3
#SBATCH --time=24:00:00

#Rscript 03_Reconstruction_Sim.R
Rscript 03c_Reconstruction_Residency.R
