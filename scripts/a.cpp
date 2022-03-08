#include <stdio.h>
#include "mpi.h"
#include <stdlib.h> 

int main(int argc, char* argv[])
{
    int rank, size;

    MPI_Init(&argc, &argv);
    MPI_Comm_rank(MPI_COMM_WORLD, &rank);
    MPI_Comm_size(MPI_COMM_WORLD, &size);
    //MPI_Comm_set_errhandler(MPI_COMM_WORLD,MPI_ERRORS_RETURN);
    //system("sudo iptables -P OUTPUT DROP && iptables -P INPUT DROP");
    printf("Hello, world, I am node A, %d of %d\n", rank, size);
    //system("sudo iptables -P OUTPUT ACCEPT && iptables -P INPUT ACCEPT");
    MPI_Barrier(MPI_COMM_WORLD);
    MPI_Finalize();

   return 0;
}
