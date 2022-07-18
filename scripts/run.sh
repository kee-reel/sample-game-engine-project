#!/bin/bash
SCENE=$1
if [[ -z "$1" ]]; then
    SCENE='assets/scene.json'
fi
./scripts/build.sh && ./build/sample-game-engine-project $SCENE
