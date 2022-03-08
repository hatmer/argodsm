#!/bin/bash

cd ~/argodsm/build

make install && /home/atmerhannah/ompi5/bin/mpirun --hostfile ../hosts -n 2 bin/mpi/trivialTests
