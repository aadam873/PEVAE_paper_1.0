#!/bin/bash -l
#
#SBATCH --output=slurm_HP1.out
#SBATCH -N 1
#SBATCH -n 1
#SBATCH --time=10:00:00
#SBATCH --gres=gpu:1
#SBATCH --constraint=centos7
#SBATCH --partition=sched_mit_binz_gpu
#SBATCH --mem=16G
#SBATCH --export=ALL

#module load gcc
#module add mvapich2/gcc
module purge
module load gcc
module load engaging/openmpi/2.0.3 cuda/10.0

python script/train.py --num_epoch 10000 --weight_decay 0.01 --directory HP1_known




