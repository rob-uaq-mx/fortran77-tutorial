#!/bin/sh
# Downloads DGESV and all the routines it depends on (including the BLAS
# routines it uses) from Netlib, and builds lib/liblapack.a.
# Needed by ch18/solve.f.   Usage:  sh get_lapack.sh
#
# This is the method described in chapter18.2-lapack.tex, section
# "How to get LAPACK". To use other LAPACK routines, change the file
# name in the URL, or install the complete LAPACK.
set -e
cd "$(dirname "$0")"
FC=${FC:-gfortran}
mkdir -p lib
tmp=$(mktemp -d)
curl -sS -o "$tmp/dgesv.tgz" \
  "https://www.netlib.org/cgi-bin/netlibfiles.tgz?format=tgz&filename=lapack/double/dgesv.f"
tar xzf "$tmp/dgesv.tgz" -C "$tmp" 2>/dev/null
cd "$tmp"
$FC -O2 -c lapack/*/*.f
ar cr liblapack.a *.o
ranlib liblapack.a 2>/dev/null || true
cd - > /dev/null
cp "$tmp"/liblapack.a lib/
rm -rf "$tmp"
echo "Done: lib/liblapack.a"
