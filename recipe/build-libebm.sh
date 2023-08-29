#!/usr/bin/env bash

/bin/sh ./build.sh 

if [ $(uname) = 'Darwin' ]; then
   cp ./python/interpret-core/interpret/lib/libebm_mac_*.dylib "$PREFIX/lib/libebm.dylib"
else
   cp ./python/interpret-core/interpret/lib/libebm_linux_*.so "$PREFIX/lib/libebm.so"
fi
