#!/bin/bash -eu

source ../../util/util_cmd.sh

clean

build horizontal.cpp -O2 horizontal

build vertical.cpp -O2 vertical

run_all
