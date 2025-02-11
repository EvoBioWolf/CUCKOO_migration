# Evolutionary Genomics of Migration: Oriental and common cuckoos 

This project aims to investigate the evolutionary genomics underlying migratory strategy in common and oriental cuckoos.

## Project Structure

The repository is organized as follows:

### `/pre_processing/`
Preparing fastq reads, alignment. 

### `/snp_calling/`
Calling SNPs from alignments, subsampling individuals. 

### `/relatedness/`
Identify related individuals. 

### `/msmc/`
Run MSMC crosscoalescent and MSMC-IM, using raw gVCFs with basic filtering for invariant sites. 

### `/admixture/`
Run ADMIXTURE and evalAdmix for plotting genetic tesselations across space. 

### `/reconstruction/`
Ancestral reconstructions of overwintering and migratory route. 

### `/temperature_periods`
[Kawamura 2007](https://www.ncei.noaa.gov/access/metadata/landing-page/bin/iso?id=noaa-icecore-6076) Ice Core Temperature data for identifying warm / cold periods. 

## Contact

Please open an issue on this repository or reach out to me (Justin Merondun): heritabilities@gmail.com
