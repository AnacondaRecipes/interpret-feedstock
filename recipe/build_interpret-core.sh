#!/usr/bin/env bash

pushd python/interpret-core/
$PYTHON -m pip install . -vv --no-deps --no-build-isolation
popd
/bin/sh ./build.sh

if [ "$os_type" = "Darwin" ]; then
   if [[ $target_platform == "osx-arm64" ]]; then
      cp ./python/interpret-core/interpret/lib/libebm_mac_arm.dylib $SP_DIR/interpret/lib/libebm_mac_arm.dylib
   else
      cp ./python/interpret-core/interpret/lib/libebm_mac_x64.dylib $SP_DIR/interpret/lib/libebm_mac_x64.dylib
   fi
else
  cp ./python/interpret-core/interpret/lib/libebm_linux_x64.so $SP_DIR/interpret/lib/libebm_linux_x64.so
fi
