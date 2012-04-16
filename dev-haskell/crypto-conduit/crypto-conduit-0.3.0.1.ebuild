# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

# ebuild generated by hackport 0.2.17.9999

EAPI=4

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="Conduit interface for cryptographic operations (from crypto-api)."
HOMEPAGE="https://github.com/meteficha/crypto-conduit"
SRC_URI="http://hackage.haskell.org/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"

RDEPEND="=dev-haskell/cereal-0.3*[profile?]
		=dev-haskell/conduit-0.4*[profile?]
		>=dev-haskell/crypto-api-0.9[profile?]
		<dev-haskell/crypto-api-0.11[profile?]
		>=dev-haskell/transformers-0.2[profile?]
		<dev-haskell/transformers-0.4[profile?]
		>=dev-lang/ghc-6.8.2"
DEPEND="${RDEPEND}
		>=dev-haskell/cabal-1.8"

src_prepare() {
	sed -e "s@crypto-api >= 0.9 && < 0.10@crypto-api >= 0.9 \&\& < 0.11@"\
		-i "crypto-conduit.cabal" || die "loosen deps failed"
}

src_configure() {
	cabal_src_configure $(use_enable test tests)
}
