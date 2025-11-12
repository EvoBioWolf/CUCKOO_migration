#### Plot & estimate species tree 
setwd('~/EvoBioWolf/CUCKOO_migration/reconstruction/')
library(ggtree)
library(ape)
library(tidyverse)
library(treeio)
library(phytools)


### read in data 
phenos <- read_tsv('N45_Phenotypes.txt')
phenotypes <- setNames(phenos$Residency, phenos$new_label)

m = read.iqtree('N45_Tree.tre')
m1 = treeio::root(as.phylo(m),outgroup='Pachycoccyx_audeberti',resolve.root=TRUE)

#Plot probabilities 
t2 <- multi2di(m1)

# Quick ape method 
fitER <- ape::ace(phenotypes,t2,model="ER",type="discrete")

# Determine ancestral state likelihood number of shifts using MCMC
simfull <- make.simmap(t2, phenotypes, model="ER", nsim=100,Q='mcmc')
save.image(file = "Residency_workspace.RData")

