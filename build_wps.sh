#!/bin/bash
# Created: Wednesday, May 24 2017

build_option=1

cd ~/wrf/gcc/WPS
./clean -a

echo $build_option | ./configure # configure

# Fix configure.wps (give correct netcdf fortran library path on ubuntu)
FILE=configure.wps
perl -i -pe "s!-L.*-lnetcdf!-L/usr/lib/x86_64-linux-gnu/ -lnetcdff!" $FILE

# ./compile 2>&1 | tee compile.log &
