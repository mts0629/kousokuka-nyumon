#!/bin/bash -eu

source ../../util/util_cmd.sh

clean

build source.cpp -O0 source-O0
asm source.cpp -O0 source-O0.s

build source_inv.cpp -O0 source_inv-O0
asm source_inv.cpp -O0 source_inv-O0.s

build source.cpp -O2 source-O2
asm source.cpp -O2 source-O2.s

build source_inv.cpp -O2 source_inv-O2
asm source_inv.cpp -O2 source_inv-O2.s

build source_int.cpp -O0 source_int-O0
asm source_int.cpp -O0 source_int-O0.s

run_all
