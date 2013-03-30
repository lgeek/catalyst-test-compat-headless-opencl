#!/bin/sh

# Using the AMD OpenCL library creates /dev/ati/card[x..y]
clinfo > /dev/null

# The /dev/ati/card[x..y] files are owned by root:root (644)
chmod 666 /dev/ati/*

