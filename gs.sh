#!/bin/bash
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=48
#SBATCH --time=48:00:00
#SBATCH --mem-per-cpu=64000
#SBATCH --partition=vhmem
#SBATCH --account=su007-rr

module purge
#module load QuSpin/0.3.6 GCC parallel
#ml GCC parallel Python SciPy-bundle/2023.11
module restore torch-1_12_1-cuda-11_7_0


python gs.py
#MY_PARALLEL_OPTS="-N 1 --delay .2 -j $SLURM_NTASKS --joblog parallel-${SLURM_JOBID}.log"
#MY_SRUN_OPTS="-N 1 -n 1 --exclusive"
#MY_EXEC="/gpfs/home/p/phrczh/HubbardNet/hubbard-gs.py"
#jobfile="hubbard-gs.py"
#chmod +x ${jobfile}
#parallel $MY_PARALLEL_OPTS srun $MY_SRUN_OPTS $MY_EXEC ::: {0..99}


