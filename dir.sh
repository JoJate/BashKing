#!/bin/bash

set +eux

echo "Hello"

DIR=$(cd -P -- "$(dirname -- "${BASH_SOURCE[0]}")" && pwd -P)

echo "[${DIR}]"
