# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

# ebuild generated by hackport 0.6.7.9999
#hackport: flags: -build-tests

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

MY_PN="ChasingBottoms"
MY_P="${MY_PN}-${PV}"
S="${WORKDIR}/${MY_P}"

DESCRIPTION="For testing partial and infinite values"
HOMEPAGE="https://hackage.haskell.org/package/ChasingBottoms"
SRC_URI="https://hackage.haskell.org/package/${MY_P}/${MY_P}.tar.gz"

LICENSE="MIT"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"

RDEPEND=">=dev-haskell/mtl-2:=[profile?] <dev-haskell/mtl-2.3:=[profile?]
	>=dev-haskell/quickcheck-2.10:2=[profile?] <dev-haskell/quickcheck-2.15:2=[profile?]
	>=dev-haskell/random-1.0:=[profile?] <dev-haskell/random-1.3:=[profile?]
	>=dev-haskell/syb-0.1.0.2:=[profile?] <dev-haskell/syb-0.8:=[profile?]
	>=dev-lang/ghc-8.4.3:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-2.2.0.1
"

src_configure() {
	haskell-cabal_src_configure \
		--flag=-build-tests
}