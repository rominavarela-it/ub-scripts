## create a mirror folder that will have the same route in every node

sudo mkdir /mirror

sudo mkdir /mirror/romina

sudo chmod 007 /mirror/romina

mkdir /mirror/romina/mpich

cd /mirror/romina/mpich

## get mpich

wget http://www.mpich.org/static/downloads/3.1.4/mpich-3.1.4.tar.gz

# Install Guide
## step 1 - unpack

tar xfz mpich-3.1.4.tar.gz

## step 2 - choose a installation directory

mkdir mpich-install

## step 3 - choose a build directory
mkdir mpich-build

## step 4,5 - 
## configure mpich specifying installation dir 
## and running config script

cd mpich-build

/mirror/romina/mpich/mpich-3.1.4/configure -prefix=/mirror/romina/mpich/mpich-install --with-pm=hydra --with-java=/usr/lib/jvm/java-7-openjdk-amd64 --disable-fortran

## step 6 - build

make

## step 7 - install

make install

## step 8 - add bin installation directory to path

export PATH=/mirror/romina/mpich/mpich-install/bin:/mirror/romina/mpich/mpich-install/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games

### test installation

which mpiexec

