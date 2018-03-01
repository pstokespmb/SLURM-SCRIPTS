#!/bin/bash 
#SBATCH -D /clusterfs/rosalind/users/peter_stokes/assembly
#SBATCH -J supernova
#SBATCH --partition=savio_bigmem
#SBATCH --qos=savio_normal
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=20
#SBATCH --mem=512000
#SBATCH --time=72:00:00
#SBATCH -o /global/home/users/peter_stokes/out/assembly/Ann1238_7484/assemblyAnn1238_7484.out
#SBATCH -e /global/home/users/peter_stokes/out/assembly/Ann1238_7484/assemblyAnn1238_7484.err
#SBATCH --mail-user=peter_stokes@berkeley.edu
#SBATCH --mail-type=All

module load supernova/2.0.0 

supernova testrun --id=tiny

