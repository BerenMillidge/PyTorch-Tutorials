#!/bin/bash

#bash installation script for pytorch using conda
$condapath='home/beren/anaconda3'
export CMAKE_PREFIX_PATH="$(dirname condapath)/../"
conda install numpy pyyaml mkl mkl-include setuptools cmake cffi typing
conda install -c mingfeima mkldnn
conda install -c pytorch magma-cuda80
git clone --recursive https://github.com/pytorch/pytorch
cd pytorch
python setup.py install
echo "Pytorch installation complete"
echo " "