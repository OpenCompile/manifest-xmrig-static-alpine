# Maintainer: Daniel Hejduk <danielhejduk@disroot.org>

pkgname=xmrig
pkgver=6.21.2
pkgrel=0
pkgdesc="Cryptocurrency miner for RandomX and Cryptonight algorithms"
url="https://github.com/xmrig/xmrig"
arch="any"
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
