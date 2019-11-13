#!/bin/#!/usr/bin/env bash

export ARCH=mips
export CROSS_COMPILE=mips-openwrt-linux-musl-
export CC=mips-openwrt-linux-musl-gcc
set -e
echo "Make mqtt"
cd paho.mqtt.embedded-c
git pull
make
