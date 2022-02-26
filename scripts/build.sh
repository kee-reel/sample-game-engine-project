#!/bin/bash
if [[ ! -e build ]]; then
	mkdir build
fi
cd sample-game-engine/libs
./install-libs.sh
cd ../../build
echo "[RUNNING CMAKE]"
cmake -DCMAKE_BUILD_TYPE=Debug ..
echo "[RUNNING MAKE]"
make -s -j$(( $(nproc --all) + 1 ))
