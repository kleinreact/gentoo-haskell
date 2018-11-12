# Copyright 1999-2018 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=6

# ebuild generated by hackport 0.5.6.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="Abstraction over creating network connections with SOCKS5 and TLS"
HOMEPAGE="https://github.com/glguy/irc-core"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="ISC"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=">=dev-haskell/attoparsec-0.13:=[profile?] <dev-haskell/attoparsec-0.14:=[profile?]
	>=dev-haskell/hsopenssl-0.11.2.3:=[profile?] <dev-haskell/hsopenssl-0.12:=[profile?]
	>=dev-haskell/hsopenssl-x509-system-0.1:=[profile?] <dev-haskell/hsopenssl-x509-system-0.2:=[profile?]
	>=dev-haskell/network-2.6:=[profile?]
	>=dev-lang/ghc-8.4.3:=
	dev-libs/openssl
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-2.2.0.1
"

src_prepare() {
	default

	cabal_chdeps \
		'base                  >=4.9  && <4.12' 'base                  >=4.9' \
		'network               >=2.6  && <2.8' 'network               >=2.6'
}