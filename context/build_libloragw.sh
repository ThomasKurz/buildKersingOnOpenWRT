#!/bin/#!/usr/bin/env bash

export ARCH=mips
export CROSS_COMPILE=mips-linux-gnu-

set -e
echo "Make libloragw"
cd lora_gateway/libloragw
git pull
make
