#!/bin/bash -eu

source ../util/util_cmd.sh

clean

build source.cpp -O2 base
asm source.cpp -O2 base.s

build source.cpp "-O2 -DUNROLL=2" base_unroll_2
asm source.cpp "-O2 -DUNROLL=2" base_unroll_2.s

build source.cpp "-O2 -DUNROLL=4" base_unroll_4
asm source.cpp "-O2 -DUNROLL=4" base_unroll_4.s

build source.cpp "-O2 -DUNROLL=8" base_unroll_8
asm source.cpp "-O2 -DUNROLL=8" base_unroll_8.s

run_all
