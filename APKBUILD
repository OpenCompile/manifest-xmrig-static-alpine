# Maintainer: Daniel Hejduk <danielhejduk@disroot.org>

pkgname=xmrig
pkgver=0.4.2
pkgrel=0
pkgdesc="C++ implementation of Mustache intended mainly for use as a PHP extension"
url="https://github.com/jbboehr/libmustache"
arch="x86_64"
license="GPL-3.0"
depends=""
makedepends="git make cmake libstdc++ gcc g++ automake libtool autoconf linux-headers"
subpackages=""
_mustachespec_rev="b96be9fd4c6d6984828d93169fe7e86d8a8aec2f"
source="$pkgname-$pkgver.tar.gz::https://github.com/OpenCompile/manifest-$pkgname-alpine-$arch/archive/v$pkgver.tar.gz"
builddir="$srcdir/$pkgname-$pkgver"

prepare() {
	default_prepare
	rm -rf "$builddir"/spec && \
	mv "$srcdir"/mustache-spec-$_mustachespec_rev "$builddir"/spec
	cd "$builddir"
	autoreconf -fvi
}

build() {
	cd "$builddir"
	./configure \
		--prefix=/usr \
        --without-mustache-spec
	make
}

check() {
	cd "$builddir"
	make all test install
}

package() {
	cd "$builddir"
	make install INSTALL_ROOT="$pkgdir"
}
