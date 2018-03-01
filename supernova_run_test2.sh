#!/bin/bash 
#SBATCH -D /clusterfs/rosalind/users/peter_stokes/assembly/50M_test
#SBATCH -J supernova
#SBATCH --partition=vector
#SBATCH --qos=vector_batch
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=48
#SBATCH --mem=256000
#SBATCH --time=400:00:00
#SBATCH --account=vector_blackmanlab


#SBATCH -o /global/home/users/peter_stokes/out/assembly/Ann1238_7506/testAnn1238_7506_2.out
#SBATCH -e /global/home/users/peter_stokes/out/assembly/Ann1238_7506/testAnn1238_7506_2.err


#SBATCH --mail-user=peter_stokes@berkeley.edu
#SBATCH --mail-type=All

module load supernova/2.0.0 

supernova run --id=50M_Test_7506_3 \
--fastqs=/clusterfs/rosalind/users/peter_stokes/10X/Ann1238_7506/ \
--maxreads=20000000 \
--localcores=48 \
--localmem=245 \
--description="50M Test 7506"