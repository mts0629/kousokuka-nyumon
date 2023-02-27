#!/bin/bash -eu

mkdir -p ./bin

g++ -O0 source.cpp -o ./bin/source_o0
g++ -S -g -O0 source.cpp -o source_o0.s

g++ -O2 source.cpp -o ./bin/source_o2
g++ -S -g -O2 source.cpp -o source_o2.s
