#!/bin/bash -eu

mkdir -p ./bin

g++ -O2 source_paren.cpp -o ./bin/source_paren_o2
g++ -S -g -O2 source_paren.cpp -o source_paren_o2.s
