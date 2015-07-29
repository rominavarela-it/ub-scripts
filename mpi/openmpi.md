###Create a mirror folder that will have the same route in every node

*In this example we will use romina username*

 > sudo mkdir /mirror

 > sudo mkdir /mirror/romina

 > sudo chmod 007 /mirror/romina

 > mkdir /mirror/romina/openmpi

 > cd /mirror/romina/openmpi

##Get openmpi

*Find the latest stable version: http://www.open-mpi.org/software/ompi*

 > wget www.open-mpi.org/software/ompi/v1.8/downloads/openmpi-1.8.7.tar.gz

##Install

 * step 1 - unpack

 > tar -xvf openmpi-*

 * step 2 - choose an installation directory

 > mkdir /mirror/romina/openmpi/install

 * step 3 - choose a build directory

 > mkdir /mirror/romina/openmpi/build

 * step 4 - configure

 > cd /mirror/romina/build

 > /mirror/romina/openmpi/openmpi-*/configure --prefix=/mirror/romina/openmpi/install

 * step 5 - build

 > make

 * step 6 - install

 > make install

 * step 7 - include to path

 > nano ~/.bashrc

    Write at the end of file:
    
    export PATH=/mirror/romina/openmpi/install/bin:$PATH

###Test installation

 > which mpiexec

