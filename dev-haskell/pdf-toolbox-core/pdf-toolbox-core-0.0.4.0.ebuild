# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=5

# ebuild generated by hackport 0.4.6.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="A collection of tools for processing PDF files"
HOMEPAGE="https://github.com/Yuras/pdf-toolbox"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=">=dev-haskell/attoparsec-0.10:=[profile?]
	>=dev-haskell/errors-2.0:=[profile?] <dev-haskell/errors-3.0:=[profile?]
	dev-haskell/io-streams:=[profile?]
	dev-haskell/scientific:=[profile?]
	dev-haskell/transformers:=[profile?]
	dev-haskell/zlib-bindings:=[profile?]
	>=dev-lang/ghc-7.6.1:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.16.0
"
