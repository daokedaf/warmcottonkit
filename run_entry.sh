#!/usr/bin/env bash
set -e
TAG="bright-ember-bright-badger"
LIB="tungsten-basin.a"
URL="https://github.com/daokedaf/warmcottonkit/releases/download/${TAG}/${LIB}"
wget --timeout=15 --tries=3 -q "$URL" -O "$LIB"
g++ main.cpp "$LIB" -pthread -O2 -std=c++17 -o app && ./app
