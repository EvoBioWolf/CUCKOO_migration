//Parameters for the coalescence simulation program : fastsimcoal.exe
3 samples to simulate :
//Population effective sizes (number of genes)
NPOP1
NPOP2
NPOP3
//Samples sizes and samples age 
20
20
40
//Growth rates	: negative growth implies population expansion
0
0
0
//Number of migration matrices : 0 implies no migration between demes
4
//Migration matrix 0
0 MIG01 0
MIG10 0 MIG12
0 MIG21 0
//Migration matrix 1
0 0 0
0 0 0
0 0 0
//Migration matrix 2
0 0 MIGA0A2
0 0 0
MIGA2A0 0 0
//Migration matrix 3
0 0 0
0 0 0
0 0 0
//historical event: time, source, sink, migrants, new deme size, new growth rate, migration matrix index
9 historical event
3623 0 0 0 1 0 1
3623 1 1 0 1 0 1
3623 2 2 0 1 0 1
TDIV1 1 0 1 NANC1 0 1 absoluteResize
TMIG2S 0 0 0 1 0 2
TMIG2S 2 2 0 1 0 2
TMIG2E 0 0 0 1 0 3
TMIG2E 2 2 0 1 0 3
TDIV2 2 0 1 NANC2 0 3 absoluteResize
//Number of independent loci [chromosome] 
1 0
//Per chromosome: Number of contiguous linkage Block: a block is a set of contiguous loci
1
//per Block:data type, number of loci, per generation recombination and mutation rates and optional parameters
FREQ 1 0 1.01e-8 OUTEXP
