#!/bin/sh
# Downloads the reference BLAS from Netlib and builds lib/libblas.a
# (needed by the examples in ch18/).   Usage:  sh get_blas.sh
#
# Warnings from tar such as "Ignoring unknown extended header keyword"
# are harmless: the Netlib archive contains macOS metadata.
set -e
cd "$(dirname "$0")"
FC=${FC:-gfortran}
mkdir -p lib
tmp=$(mktemp -d)
curl -sS -o "$tmp/blas.tgz" https://www.netlib.org/blas/blas.tgz
tar xzf "$tmp/blas.tgz" -C "$tmp" 2>/dev/null
cd "$tmp"/BLAS-*
$FC -O2 -c *.f *.f90
ar cr libblas.a *.o
ranlib libblas.a 2>/dev/null || true
cd - > /dev/null
cp "$tmp"/BLAS-*/libblas.a lib/
rm -rf "$tmp"
echo "Done: lib/libblas.a"
