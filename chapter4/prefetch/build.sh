#!/bin/bash -eu

source ../../util/util_cmd.sh

clean

build prefetch.cpp -O0 base
build prefetch.cpp "-O0 -DUSE_PREFETCH" prefetch

run_all
