#!/bin/bash

mkdir build
cd build

cmake \
    -DLLVM_DIR=$PREFIX/lib/cmake/llvm \
    -DCMAKE_INSTALL_PREFIX=$PREFIX \
    -DCMAKE_PREFIX_PATH=$PREFIX \
    -DBUILD_SHARED_LIBS=yes \
    ..

make -j${CPU_COUNT}
make install
