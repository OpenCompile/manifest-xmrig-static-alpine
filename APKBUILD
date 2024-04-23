# Maintainer: Daniel Hejduk <danielhejduk@disroot.org>

pkgname=xmrig-static
pkgver=6.21.3
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

    cmake .. -DXMRIG_DEPS=scripts/deps -DBUILD_STATIC=ON -DWITH_CUDA=OFF -DWITH_OPENCL=OFF

    make -j$(nproc)
}

package() {
	cd "$builddir"/build
    mkdir -p $pkgdir/usr/bin
	cp xmrig $pkgdir/usr/bin/
}

sha512sums="
91e92f61e385b75715b0b00fcb772bf997f3db19ef47f43c4bda3662aec6276273551ac915a7a6eeef253deb8da5b0ec0b45e02f0b84211ab8f0f5a37f34c87e  xmrig-static-6.21.3.tar.gz
"
