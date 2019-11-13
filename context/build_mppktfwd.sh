#!/bin/#!/usr/bin/env bash

export ARCH=mips
export CROSS_COMPILE=mips-openwrt-linux-musl-

set -e
echo "Make mp_pkt_fwd"
cd packet_forwarder/mp_pkt_fwd
git pull
make
mips-openwrt-linux-musl-strip /kersing/packet_forwarder/mp_pkt_fwd/mp_pkt_fwd
