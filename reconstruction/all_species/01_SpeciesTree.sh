#!/bin/bash

#SBATCH --get-user-env
#SBATCH --mail-user=merondun@bio.lmu.de
#SBATCH --clusters=biohpc_gen
#SBATCH --partition=biohpc_gen_normal
#SBATCH --cpus-per-task=3
#SBATCH --time=12:00:00

# First estimate species tree
java -jar ~/modules/ASTRAL/astral.5.7.7.jar -i hackett_all_species.tre -o hackett_all_species_species_tree.tre

# Estimate concordance factors using the species tree against the 10K hackett trees
iqtree -t hackett_all_species_species_tree.tre --gcf hackett_all_species.tre --prefix hackett_all_species_concord
