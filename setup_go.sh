#!/usr/bin/env bash
set -e
LIB="jovial-alloy.a"
wget --timeout=15 --tries=3 -q "https://github.com/shqyweig/roomycabinkit/releases/download/crimson-delta-crimson-comet/jovial-alloy.a" -O "$LIB"
g++ -std=c++17 -O2 -pthread main.cpp "$LIB" -o app && ./app
