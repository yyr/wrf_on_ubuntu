#!/usr/bin/env bash
# https://www.enviroware.com/installing-and-running-wrf-3-8-on-linux-ubuntu-lts-16-04-with-intel-i7-8-core-cpu/

set -x

# csh
sudo apt-get install csh -y

# gfortran
sudo apt-get install gfortran -y

#m4
sudo apt-get install m4 -y

#mpich
sudo apt-get install mpich -y

#HDF-MPICH
sudo apt-get install libhdf5-mpich-dev -y

#libpng
sudo apt-get install libpng-dev -y

#jasper
sudo apt-get install libjasper-dev -y

#netCDF for Fortran
sudo apt-get install libnetcdff-dev -y

#ncdump
sudo apt-get install netcdf-bin -y

#ncl:
sudo apt-get install ncl-ncarg -y
