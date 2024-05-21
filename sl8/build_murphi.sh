#!/bin/sh
#if [ -f "$1" ] ; then
#    rm "$1"
#fi
# /p/dt/fvcoe/pub/tools/cmurphi/latest/bin/mu -b $1.m
# g++ -O4 -Wno-deprecated -Wno-write-strings -DCATCH_DIV -static -std=c++11 -I /p/dt/fvcoe/pub/tools/cmurphi/latest/include -c -o $1.o $1.cpp
# g++ -O4 -Wno-deprecated -Wno-write-strings -DCATCH_DIV -static -std=c++11 -o $1 $1.o -lm
# $1 -p4 -pr -m 10000 -tv -d . > $1.txt

INCLUDEPATH="/p/dt/fvcoe/pub/tools/cmurphi/cmurphi5.5.0/include"

SRCPATH="/p/dt/fvcoe/pub/tools/cmurphi/cmurphi5.5.0/bin/"

CXX="g++"

CFLAGS="-std=c++11"

OFLAGS="-ggdb"

${SRCPATH}mu -c NVL_$1.m

${CXX} -O4 -Wno-deprecated -Wno-write-strings -Wno-return-type -DCATCH_DIV -static ${CFLAGS} -I${INCLUDEPATH} -c -o NVL_$1.o NVL_$1.cpp

${CXX} -O4 -Wno-deprecated -Wno-write-strings -Wno-return-type -DCATCH_DIV -static ${CFLAGS} ${OFLAGS} -o NVL_$1 NVL_$1.o -I${INCLUDEPATH} -lm

mkdir -p /tmp/ghoshsau_NVL_$1

NVL_$1 -p4 -pr -m 60000 -d /tmp/ghoshsau_NVL_$1 > NVL_$1_murphi.txt