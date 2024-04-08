#!/bin/sh

set -xe

apk update

apk add git make cmake libstdc++ gcc g++ automake libtool autoconf linux-headers alpine-sdk
