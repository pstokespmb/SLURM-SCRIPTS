#!/bin/bash 
#SBATCH -D /clusterfs/rosalind/users/peter_stokes/assembly/50M_test
#SBATCH -J supernova
#SBATCH --partition=savio2_htc 
#SBATCH --account=co_rosalind 
#SBATCH --qos=rosalind_htc2_normal
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=1
#SBATCH --cpus-per-task=12
#SBATCH --time=900:00:00
#SBATCH --mem=128000


#SBATCH -o /global/home/users/peter_stokes/out/assembly/Ann1238_7506/testAnn1238_7506_4.out
#SBATCH -e /global/home/users/peter_stokes/out/assembly/Ann1238_7506/testAnn1238_7506_4.err


#SBATCH --mail-user=peter_stokes@berkeley.edu
#SBATCH --mail-type=All

module load supernova/2.0.0 

supernova run --id=20M_Test_7506_4 \
--fastqs=/clusterfs/rosalind/users/peter_stokes/10X/Ann1238_7506/ \
--maxreads=20000000 \
--localcores=12 \
--localmem=125 \
--description="50M Test 7506"

