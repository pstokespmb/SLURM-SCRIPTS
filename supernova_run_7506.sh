#!/bin/bash 
#SBATCH -D /clusterfs/rosalind/users/peter_stokes/assembly/Ann1238_7506_assembly
#SBATCH -J supernova
#SBATCH --partition=savio_bigmem
#SBATCH --qos=savio_normal
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=20
#SBATCH --mem=512000
#SBATCH --time=
#SBATCH --account=vector_blackmanlab


#SBATCH -o /global/home/users/peter_stokes/out/assembly/Ann1238_7506/Ann1238_7506_assembly.out
#SBATCH -e /global/home/users/peter_stokes/out/assembly/Ann1238_7506/Ann1238_7506_assembly.err


#SBATCH --mail-user=peter_stokes@berkeley.edu
#SBATCH --mail-type=All

module load supernova/2.0.0 

supernova run --id=50M_Test_7506_2 \
--fastqs=/clusterfs/rosalind/users/peter_stokes/10X/Ann1238_7506/ \
--localcores=20 \
--localmem=508 \
--description="Ann1238 7506 assembly"