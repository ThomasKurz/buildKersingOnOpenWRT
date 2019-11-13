#!/bin/#!/usr/bin/env bash

export ARCH=mips
export CROSS_COMPILE=mips-linux-gnu-

set -e
echo "Make mp_pkt_fwd"
cd packet_forwarder/mp_pkt_fwd
git pull
make
mips-linux-gnu-strip /kersing/packet_forwarder/mp_pkt_fwd/mp_pkt_fwd
