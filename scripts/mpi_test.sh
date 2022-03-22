#!/bin/bash

/home/atmerhannah/ompi5/bin/mpic++ mpi_test.cpp
/home/atmerhannah/ompi5/bin/mpirun --hostfile ../hosts -n 2 ./a.out
