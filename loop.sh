#!/bin/bash

set +eux

TARGETS=(
    "a b"
    "c d"
    "e--f"
    "ggg"
)

for i in "${TARGETS[@]}"; do
    echo "got [${i}]"
done

function all_in_one() {
    local text=("$@")
    for i in "${text[*]}"; do
        echo "one [${i}]"
    done
}

function for_each() {
    for i in "$@"; do
        echo "each [${i}]"
    done
}

all_in_one 1 2 3 4 5
for_each 1 2 3 4 5 "6 7" "8 9 X"
