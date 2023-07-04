# Copyright 1999-2023 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.8.4.0.9999
#hackport: flags: +noupperbounds,+network-bsd

CABAL_PN="HaskellNet-SSL"

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="Helpers to connect to SSL/TLS mail servers with HaskellNet"
HOMEPAGE="https://github.com/dpwright/HaskellNet-SSL"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64"

RDEPEND=">=dev-haskell/crypton-connection-0.2.7:=[profile?] <dev-haskell/crypton-connection-0.4:=[profile?]
	>=dev-haskell/data-default-0.2:=[profile?] <dev-haskell/data-default-0.8:=[profile?]
	>=dev-haskell/haskellnet-0.3:=[profile?] <dev-haskell/haskellnet-0.7:=[profile?]
	>=dev-haskell/network-3.0:=[profile?] <dev-haskell/network-3.2:=[profile?]
	>=dev-haskell/network-bsd-2.7:=[profile?] <dev-haskell/network-bsd-2.9:=[profile?]
	>=dev-lang/ghc-8.8.1:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-3.0.0.0
"

src_configure() {
	haskell-cabal_src_configure \
		--flag=network-bsd \
		--flag=noupperbounds
}

CABAL_CHDEPS=(
	'connection >= 0.2.7 && < 0.4' 'crypton-connection >= 0.2.7 && < 0.4'
)