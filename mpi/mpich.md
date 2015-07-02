###Create a mirror folder that will have the same route in every node

*In this example we will use romina username*

 > sudo mkdir /mirror

 > sudo mkdir /mirror/romina

 > sudo chmod 007 /mirror/romina

 > mkdir /mirror/romina/mpich

 > cd /mirror/romina/mpich

###Get mpich

*Find the latest stable version: https://www.mpich.org/downloads/*

 > wget http://www.mpich.org/static/downloads/3.1.4/mpich-3.1.4.tar.gz

###Follow the install Guide

*https://www.mpich.org/static/downloads/3.1.4/mpich-3.1.4-installguide.pdf*

 * step 1 - unpack

 > tar xfz mpich-3.1.4.tar.gz

 * step 2 - choose a installation directory

 > mkdir mpich-install

 * step 3 - choose a build directory
 > mkdir mpich-build

 * step 4,5 - configure mpich specifying installation dir and running config script

 > cd mpich-build

 > /mirror/romina/mpich/mpich-3.1.4/configure -prefix=/mirror/romina/mpich/mpich-install --with-pm=hydra --with-java=/usr/lib/jvm/java-7-openjdk-amd64 --disable-fortran

 * step 6 - build

 > make

 * step 7 - install

 > make install

 * step 8 - add bin installation directory to path

 > nano ~/.bashrc

    Write at the end of file:
    
    export PATH=/mirror/romina/mpich/mpich-install/bin:$PATH

###Test installation

 > which mpiexec

