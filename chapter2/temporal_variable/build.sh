#!/bin/bash -eu

source ../../util/util_cmd.sh

clean

build source.cpp -O0 source-O0
asm source.cpp -O0 source-O0.s

build source.cpp -O2 source-O2
asm source.cpp -O2 source-O2.s

build source_tmp_var.cpp -O0 source_tmp_var-O0
asm source_tmp_var.cpp -O0 source_tmp_var-O0.s

build source_tmp_var.cpp -O2 source_tmp_var-O2
asm source_tmp_var.cpp -O2 source_tmp_var-O2.s

run_all
