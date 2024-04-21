#!/bin/sh

sed -i 's~pkgver=.*~pkgver='"$2"'~' $1
