#!/bin/bash
# Created: Wednesday, May 24 2017

build_option=34

cd ~/wrf/gcc/WRFV3
./clean -a

echo $build_option | ./configure # configure

# Fix configure.wrf (give correct netcdf fortran library path on ubuntu)
FILE=configure.wrf
perl -i -pe "s!-L/usr/lib!-L/usr/lib/x86_64-linux-gnu/ -lnetcdff!" $FILE

./compile em_real  2>&1 | tee compile.log &
