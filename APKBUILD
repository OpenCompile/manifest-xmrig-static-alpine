# Maintainer: Daniel Hejduk <danielhejduk@disroot.org>

pkgname=xmrig
pkgver=0.4.2
pkgrel=0
pkgdesc="Cryptocurrency miner for RandomX and Cryptonight algorithms"
url="https://github.com/xmrig/xmrig"
arch="x86_64"
license="GPL-3.0"
depends=""
makedepends="git make cmake libstdc++ gcc g++ automake libtool autoconf linux-headers"
subpackages=""
source="$pkgname-$pkgver.tar.gz::https://github.com/xmrig/xmrig/archive/v$pkgver.tar.gz"
builddir="$srcdir/$pkgname-$pkgver"

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
	make install INSTALL_ROOT="$pkgdir"
}
