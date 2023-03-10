#!/bin/bash -eu

source ../../util/util_cmd.sh

clean

build source.cpp -O0 source-O0
asm source.cpp -O0 source-O0.s

build source_inline.cpp -O0 source_inline-O0
asm source_inline.cpp -O0 source_inline-O0.s

build source.cpp -O2 source-O2
asm source.cpp -O2 source-O2.s

build source_inline.cpp -O2 source_inline-O2
asm source_inline.cpp -O2 source_inline-O2.s

run_all
