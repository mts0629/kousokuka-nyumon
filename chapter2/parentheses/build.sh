#!/bin/bash -eu

source ../../util/util_cmd.sh

clean

build source.cpp -O2 source-O2
asm source.cpp -O2 source-O2.s

build source_int.cpp -O2 source_int-O2
asm source_int.cpp -O2 source_int-O2.s

run_all
