#!/bin/bash -eu

BIN_DIR=./bin

mkdir -p ${BIN_DIR}

build_and_get_asm() {
    src=$1
    opt_ox="$2"
    bname=$(basename ${src})

    out="${BIN_DIR}/${bname/.cpp/${opt_ox}}"
    g++ ${opt_ox} ${src} -o ${out}

    out_asm="./${bname/.cpp/${opt_ox}.s}"
    g++ -S -g ${opt_ox} ${src} -o ${out_asm}
}

run_all() {
    for binary in $(ls ${BIN_DIR}); do
        echo "${BIN_DIR}/${binary}"
        ./${BIN_DIR}/${binary}
    done
}

build_and_get_asm source.cpp -O2

build_and_get_asm source_int.cpp -O2

run_all
