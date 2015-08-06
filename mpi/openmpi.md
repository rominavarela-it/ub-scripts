##Automathic Installation

 > sudo apt-get install libopenmpi-dev openmpi-bin libhdf5-openmpi-dev

##Manual Installation

**1 - Create a mirror folder that will have the same route in every node**

*In this example we will use romina username*

 > sudo mkdir /mirror

 > sudo mkdir /mirror/romina

 > sudo chmod 007 /mirror/romina

 > mkdir /mirror/romina/openmpi

 > cd /mirror/romina/openmpi

**2 - Get openmpi**

*Find the latest stable version: http://www.open-mpi.org/software/ompi*

 > wget www.open-mpi.org/software/ompi/v1.8/downloads/openmpi-1.8.7.tar.gz

**3 - Install**

 *unpack*

 > tar -xvf openmpi-*

 *choose an installation and build directory*
 
 > cd openmpi-*

 > mkdir install

 > mkdir build

 *configure, build and install*

 > ../configure --prefix=/mirror/romina/openmpi/openmpi-*/install

 > make all install

 *include to path*

 > nano ~/.bashrc

    Write at the end of file:
    
    export PATH=/mirror/romina/openmpi/install/bin:$PATH
    export LD_LIBRARY_PATH=/mirror/romina/openmpi/install/lib:$LD_LIBRARY_PATH

**4 - Test installation**

 > which mpiexec

**5- Test node**

 > ssh remote-server-name which orted
