# CMake generated Testfile for 
# Source directory: /home/atmerhannah/argodsm/tests
# Build directory: /home/atmerhannah/argodsm/build/tests
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(trivialTests-mpi "mpirun" "-n" "2" "/home/atmerhannah/argodsm/build/bin/mpi/trivialTests")
add_test(allocatorsTests-mpi "mpirun" "-n" "2" "/home/atmerhannah/argodsm/build/bin/mpi/allocatorsTests")
add_test(prefetchTests-mpi "mpirun" "-n" "2" "/home/atmerhannah/argodsm/build/bin/mpi/prefetchTests")
add_test(apiTests-mpi "mpirun" "-n" "2" "/home/atmerhannah/argodsm/build/bin/mpi/apiTests")
add_test(ompTests-mpi "mpirun" "-n" "2" "/home/atmerhannah/argodsm/build/bin/mpi/ompTests")
add_test(cppSTLTests-mpi "mpirun" "-n" "2" "/home/atmerhannah/argodsm/build/bin/mpi/cppSTLTests")
add_test(barrierTests-mpi "mpirun" "-n" "2" "/home/atmerhannah/argodsm/build/bin/mpi/barrierTests")
add_test(uninitializedTests-mpi "mpirun" "-n" "2" "/home/atmerhannah/argodsm/build/bin/mpi/uninitializedTests")
add_test(lockTests-mpi "mpirun" "-n" "2" "/home/atmerhannah/argodsm/build/bin/mpi/lockTests")
add_test(backendTests-mpi "mpirun" "-n" "2" "/home/atmerhannah/argodsm/build/bin/mpi/backendTests")
subdirs("gtest-1.7.0")
