#!/bin/bash

#SBATCH --workdir /home/mohanty/caffe_experiments/AWS/experiment_configs/googLeNet/dataset_pruned-none+\(80-20\)-grayscale/finetune
#SBATCH --nodes 1
#SBATCH --ntasks 1
#SBATCH --cpus-per-task 2
#SBATCH --mem 16384
#SBATCH --time 23:59:59
#SBATCH --partition gpu
#SBATCH --gres gpu:2
#SBATCH --qos gpu



module add caffe
module add cuda
echo STARTING AT `date`

caffe train -solver /home/mohanty/caffe_experiments/AWS/experiment_configs/googLeNet/dataset_pruned-none+\(80-20\)-grayscale/finetune/solver.prototxt -weights /home/mohanty/caffe_experiments/AWS/models/bvlc_googlenet.caffemodel
echo FINISHED at `date`

