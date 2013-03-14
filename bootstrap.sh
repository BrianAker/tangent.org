#!/bin/bash

if test -f configure; then make clean; make merge-clean; make distclean; fi;

rm -r -f autom4te.cache
autoreconf --install --force --verbose -Wall
./configure --prefix=/
make
