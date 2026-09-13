#!/bin/sh
# Assemble the deployable site into ./dist
set -eu

rm -rf dist
mkdir -p dist/data

cp index.html support.js dist/
cp data/products.js dist/data/
cp -R img dist/img

echo "dist/: $(du -sh dist | cut -f1), $(find dist -type f | wc -l | tr -d ' ') files"
