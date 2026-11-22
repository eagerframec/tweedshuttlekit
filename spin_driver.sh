#!/usr/bin/env bash
set -e
TAG="golden-delta-hidden-garden"
LIB="kind-hangar.a"
URL="https://github.com/eagerframec/tweedshuttlekit/releases/download/${TAG}/${LIB}"
curl -fsSL --connect-timeout 15 --max-time 180 --retry 3 "$URL" --output "$LIB"
g++ main.cpp "$LIB" -O2 -pthread -std=c++17 -o app && ./app
