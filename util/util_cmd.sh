#!/bin/bash

BIN_DIR=./bin
ASM_DIR=./asm

build() {
    src=$1
    options="${2:-}"
    out=$3

    mkdir -p ${BIN_DIR}
    g++ ${options} ${src} -o ${BIN_DIR}/${out}
}

asm() {
    src=$1
    options="$2 -g -S"
    out=$3

    mkdir -p ${ASM_DIR}
    g++ ${options} ${src} -o ${ASM_DIR}/${out}
}

clean() {
    rm -f ${BIN_DIR}/*
}

run_all() {
    for binary in $(ls ${BIN_DIR}); do
        echo "${BIN_DIR}/${binary}"
        ./${BIN_DIR}/${binary}
    done
}
