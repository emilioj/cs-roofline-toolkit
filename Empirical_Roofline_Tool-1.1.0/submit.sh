#!/bin/sh
#SBATCH -t 00:20:00 # execution time hh:mm:ss *OB*
#SBATCH -n 4 #tasks (for example, MPI processes)
#SBATCH -c 24 #cores/task (for example, shared-mem threads/process)
##SBATCH -N 4 #nodes (can be obtained from the two previous)
##SBATCH --ntasks-per-core ntasks # max ntasks per core
##SBATCH --ntasks-per-socket ntasks # max ntasks per socket
##SBATCH --ntasks-per-node ntasks # max ntasks per node
#SBATCH -p cola-corta

echo SLURM_CPUS_ON_NODE=${SLURM_CPUS_ON_NODE}
echo SLURM_CPUS_PER_TASK=${SLURM_CPUS_PER_TASK}
echo SLURM_JOB_CPUS_PER_NODE=${SLURM_JOB_CPUS_PER_NODE}
echo SLURM_JOB_NODELIST=${SLURM_JOB_NODELIST}
echo SLURM_NUM_NODES=${SLURM_NUM_NODES}
echo SLURM_JOB_PARTITION=${SLURM_JOB_PARTITION}
echo SLURM_NTASKS=${SLURM_NTASKS}
echo SLURM_NTASKS_PER_CORE=${SLURM_NTASKS_PER_CORE}
echo SLURM_NTASKS_PER_NODE=${SLURM_NTASKS_PER_NODE}
echo SLURM_NTASKS_PER_SOCKET=${SLURM_NTASKS_PER_SOCKET}
echo SLURM_TASKS_PER_NODE=${SLURM_TASKS_PER_NODE}

module purge
module load gcc/6.4.0
module load openmpi/2.1.1

srun ./ert Config/config.thin.ft2.cesga.01
