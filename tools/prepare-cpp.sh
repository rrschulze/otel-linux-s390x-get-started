#!/bin/bash

# requirements for building open-telemetry-cpp
apt -y install libprotobuf-dev protobuf-compiler
apt -y install curl
apt -y install libcurl4-openssl-dev

apt -y install libgtest-dev
cd /usr/src/googletest
cmake .
cmake --build . --target install

git clone https://github.com/google/benchmark.git
mkdir benchmark-build
cd benchmark-build
cmake -DCMAKE_INSTALL_PREFIX=$(pwd)/../benchmark-install ../benchmark
make install
