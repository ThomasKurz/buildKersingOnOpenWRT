#!/bin/#!/usr/bin/env bash

export ARCH=mips
export CROSS_COMPILE=mips-linux-gnu-
export CC=mips-linux-gnu-gcc
set -e
echo "Make libprotobuf"
cd protobuf-c
./autogen.sh
./configure --host=x86_64-pc-linux-gnu CFLAGS="-I ../protobuf/src" CXXFLAGS="-I ../protobuf/src"
echo ""
echo "Make libprotobuf: configuration done, now call make:"
make protobuf-c/libprotobuf-c.la
rm -rf bin
mkdir bin
./libtool install /usr/bin/install -c protobuf-c/libprotobuf-c.la `pwd`/bin
