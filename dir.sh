#!/bin/bash

set +eux

echo "Hello"

DIR=$(cd -P -- "$(dirname -- "${BASH_SOURCE[0]}")" && pwd -P)

echo "[${DIR}]"

function get_content() {
    local WORDFILE="$1"
    local RAN=$$
    local lines=$(cat $WORDFILE | wc -l)
    local rnum=$((RAN * RAN * RANDOM % $lines + 1))
    echo "$(sed -n "$rnum p" "$WORDFILE" | awk '{print tolower($0)}')"
}

function get_random_word() {
    local WORDFILE=/usr/share/dict/words
    get_content "$WORDFILE"
}

for ((i = 0; i <= 16; i++)); do
    echo "$(get_random_word)"
done
