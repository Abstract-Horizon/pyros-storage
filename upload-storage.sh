#!/bin/bash

PYROS_HOST_AND_PORT=$1

if [[ ( -z "PYROS_HOST_AND_PORT" ) ]]; then
    echo "Usage $0 <host[:port]>"
    exit 1
fi

echo "pyros $PYROS_HOST_AND_PORT upload storage -s -r storage/storage_main.py -e storage/storage_lib.py"
pyros $PYROS_HOST_AND_PORT upload -s -r storage storage/storage_main.py -e storage/storagelib.py
