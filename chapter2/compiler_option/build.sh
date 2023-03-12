#!/bin/bash -eu

source ../../util/util_cmd.sh

clean

build source.cpp -O0 source-O0
asm source.cpp -O0 source-O0.s

build source.cpp -O1 source-O1
asm source.cpp -O1 source-O1.s

build source.cpp -O2 source-O2
asm source.cpp -O2 source-O2.s

build source.cpp -O3 source-O3
asm source.cpp -O3 source-O3.s

build source.cpp -Os source-Os
asm source.cpp -Os source-Os.s

build source.cpp -Ofast source-Ofast
asm source.cpp -Ofast source-Ofast.s

run_all
