#!/bin/bash -eu

mkdir -p ./bin

g++ -O0 source.cpp -o ./bin/source
g++ -S -g -O0 source.cpp -o source.s

g++ -O0 source_tmp_var.cpp -o ./bin/source_tmp_var
g++ -S -g -O0 source_tmp_var.cpp -o source_tmp_var.s

g++ -O2 source.cpp -o ./bin/source_o2
g++ -S -g -O2 source.cpp -o source_o2.s

g++ -O2 source_tmp_var.cpp -o ./bin/source_tmp_var_o2
g++ -S -g -O2 source_tmp_var.cpp -o source_tmp_var_o2.s
