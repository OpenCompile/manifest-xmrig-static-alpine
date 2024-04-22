# Maintainer: Daniel Hejduk <danielhejduk@disroot.org>

pkgname=xmrig
pkgver=
pkgrel=0
pkgdesc="Cryptocurrency miner for RandomX and Cryptonight algorithms"
url="https://github.com/xmrig/xmrig"
arch="all"
license="GPL-3.0"
depends=""
makedepends="git make cmake libstdc++ gcc automake libtool autoconf linux-headers"
subpackages=""
source="$pkgname-$pkgver.tar.gz::https://github.com/xmrig/xmrig/archive/v$pkgver.tar.gz"
builddir="$srcdir/$pkgname-$pkgver"
options="!check"

prepare() {
	default_prepare
    mkdir $builddir/build
}

build() {
	cd $builddir/scripts
    ./build_deps.sh && cd ../build

    cmake .. -DXMRIG_DEPS=scripts/deps -DBUILD_STATIC=ON

    make -j$(nproc)
}

package() {
	cd "$builddir"/build
	cp xmrig /usr/local/bin/
}

sha512sums="e6fefa091c5884ebd30a938472032efcf68fccde1ba492bd045dc50fef1ec95bb951bbbf1ed1832670bc241400629754f31318477ae634080a89790e9fa27957 xmrig-6.21.2.tar.gz 
"
