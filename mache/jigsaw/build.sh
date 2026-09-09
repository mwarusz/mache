#!/usr/bin/env bash

set -x
set -e

# build and install JIGSAW
mkdir build
cd build
cmake ${CMAKE_ARGS} \
  -DCMAKE_INSTALL_PREFIX=${PREFIX} \
  -DCMAKE_BUILD_TYPE=RelWithDebInfo \
  ../external/jigsaw
cmake --build . --config RelWithDebInfo --target install
cd ..

${PYTHON} -m pip install . -vv --no-deps --no-build-isolation
