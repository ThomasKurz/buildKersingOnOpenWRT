#!/bin/#!/usr/bin/env bash

export ARCH=mips
export CROSS_COMPILE=mips-openwrt-linux-musl-
export CC=mips-openwrt-linux-musl-gcc
set -e
echo "Make ttn-gateway-connector"
cd ttn-gateway-connector
git pull
cp config.mk.in config.mk
make clean
make
