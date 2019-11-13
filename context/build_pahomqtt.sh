#!/bin/#!/usr/bin/env bash

export ARCH=mips
export CROSS_COMPILE=mips-linux-gnu-
export CC=mips-linux-gnu-gcc
set -e
echo "Make mqtt"
cd paho.mqtt.embedded-c
git pull
make
