#!/bin/bash -eu

source ../../util/util_cmd.sh

clean

build subblock.cpp -O2 subblock

run_all
