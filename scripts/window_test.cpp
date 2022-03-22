#include <stdio.h>
#include "mpi.h"
#include <stdlib.h> 

unsigned long * firstBuffer;
MPI_Win firstWindow;

int main(int argc, char* argv[])
{
    int rank, size;

    MPI_Init(&argc, &argv);
    MPI_Comm_rank(MPI_COMM_WORLD, &rank);
    MPI_Comm_size(MPI_COMM_WORLD, &size);

    lockBuffer = <
    int MPI_Win_create(firstBuffer, 1, 1, MPI_Info info, 
                          MPI_COMM_WORLD, firstWindow)
    
    printf("Hello, world, I am node A, %d of %d\n", rank, size);
    MPI_Barrier(MPI_COMM_WORLD);
    MPI_Finalize();

   return 0;
}
