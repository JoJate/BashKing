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
