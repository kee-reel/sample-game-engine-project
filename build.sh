#!/bin/bash
cd build
cmake -DCMAKE_BUILD_TYPE=Debug .. > /dev/null
make -s > /dev/null
