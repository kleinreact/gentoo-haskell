# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

# ebuild generated by hackport 0.6.9999
#hackport: flags: +deepseq,+transformers

CABAL_FEATURES="lib profile haddock hoogle hscolour"
# break circular dependencies:
# https://github.com/gentoo-haskell/gentoo-haskell/issues/810
CABAL_FEATURES+=" nocabaldep"
inherit haskell-cabal

DESCRIPTION="Haskell 98 phantom types to avoid unsafely passing dummy arguments"
HOMEPAGE="https://github.com/ekmett/tagged"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=">=dev-haskell/transformers-compat-0.5:=[profile?] <dev-haskell/transformers-compat-1:=[profile?]
	>=dev-lang/ghc-7.8.2:=
"
DEPEND="${RDEPEND}"

src_prepare() {
	default

	cabal_chdeps \
		'template-haskell >= 2.8 && < 2.15' 'template-haskell >= 2.8'
}

src_configure() {
	haskell-cabal_src_configure \
		--flag=deepseq \
		--flag=transformers
}
