#!/bin/bash

# Prepare Kaldi
cd kaldi/tools
make clean
make
./extras/install_openblas.sh
cd ../src
# make clean (sometimes helpful after upgrading upstream?)
./configure --static --static-math=yes --static-fst=yes --use-cuda=no --openblas-root=../tools/OpenBLAS/install --fst-root=../tools/openfst-1.6.5
make depend
cd ../../
