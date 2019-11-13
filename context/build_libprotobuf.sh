#!/bin/#!/usr/bin/env bash

export ARCH=mips
export CROSS_COMPILE=mips-openwrt-linux-musl-
export CC=mips-openwrt-linux-musl-gcc
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
