#!/bin/bash -eu

BIN_DIR=./bin

mkdir -p ${BIN_DIR}

build_and_get_asm() {
    src=$1
    options="${2:-}"
    bname=$(basename ${src})

    out="${BIN_DIR}/${bname/.cpp/${options}}"
    g++ -O2 ${options} ${src} -o ${out}

    out_asm="./${bname/.cpp/${options}.s}"
    g++ -S -g -O2 ${options} ${src} -o ${out_asm}
}

run_all() {
    for binary in $(ls ${BIN_DIR}); do
        echo "${BIN_DIR}/${binary}"
        ./${BIN_DIR}/${binary}
    done
}

build_and_get_asm source.cpp
build_and_get_asm source.cpp -DUNROLL=2
build_and_get_asm source.cpp -DUNROLL=4
build_and_get_asm source.cpp -DUNROLL=8

run_all
