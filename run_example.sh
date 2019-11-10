#!/bin/bash
#
#$ -cwd #means to execute the job for the current working directory.
#$ -j y #means to merge the standard error stream into the standard output stream instead of having two separate error and output streams.
#$ -S /bin/bash #specifies the interpreting shell for this job to be the Bash shell.
#$ -l gpu=1 #specifies how many GPUs you will use.i Delete this line if you want to run in cpu.q.
#$ -pe mpich 1 #specifies how many CPUs you will use
#$ -q all.q #or otras.q or 1080.q. Specifies which queue you will use.
#$ -N test #name of process

#EXPORTAR PROGRAMAS, LIBRERIAS, ETC

# CUDA
export CUDA_HOME=/share/apps/cuda-6.5
export PATH=$PATH:$CUDA_HOME/bin
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:$CUDA_HOME/lib64

# GAUSSIAN
export GAUSS_EXEDIR=/share/apps/g09
export PATH=$PATH:$GAUSS_EXEDIR

# AMBER
export AMBERHOME=/share/apps/amber14
export PATH=$PATH:$AMBERHOME/bin
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:$AMBERHOME/lib

################################################

export CUDA_VISIBLE_DEVICES=`/share/apps/freegpu.sh` #comando necesario en caso de correr en colas con GPU.

comando para correr

