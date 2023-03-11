#!/bin/bash -eu

BIN_DIR=./bin

mkdir -p ${BIN_DIR}

build() {
    src=$1
    options="${2:-}"
    bname=$(basename ${src})

    out="${BIN_DIR}/${bname/.cpp/${options}}"
    g++ -O2 ${options} ${src} -o ${out}
}

run_all() {
    for binary in $(ls ${BIN_DIR}); do
        echo "${BIN_DIR}/${binary}"
        ./${BIN_DIR}/${binary}
    done
}

build subblock.cpp

run_all
