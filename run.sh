#!/bin/bash

dir="/home"

if [ -z "$1" ]; then
  cd $dir && mkdir -p build && g++ main.cpp -o build/main -std=c++17 -O2 -Wall -lm --static -pipe && build/main
elif [ "${1,,}" = "time" ]; then
  cd $dir && mkdir -p build && g++ main.cpp -o build/main -std=c++17 -O2 -Wall -lm --static -pipe
  time build/main
elif [ "${1,,}" = "precompile" ]; then
  cd "/usr/include/x86_64-linux-gnu/c++/12/bits" && g++ stdc++.h -std=c++17 -O2
fi
