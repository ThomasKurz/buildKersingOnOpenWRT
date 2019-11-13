#!/bin/#!/usr/bin/env bash

export ARCH=mips
export CROSS_COMPILE=mips-linux-gnu-
export CC=mips-linux-gnu-gcc
set -e
echo "Make ttn-gateway-connector"
cd ttn-gateway-connector
git pull
cp config.mk.in config.mk
make clean
make
