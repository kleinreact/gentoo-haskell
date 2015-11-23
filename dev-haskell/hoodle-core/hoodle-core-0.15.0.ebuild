# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=5

# ebuild generated by hackport 0.4.6.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="Core library for hoodle"
HOMEPAGE="http://ianwookim.org/hoodle"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE="dyre gtk3 hub"

RDEPEND=">=dev-haskell/aeson-0.7:=[profile?]
	>dev-haskell/aeson-pretty-0.7:=[profile?]
	>=dev-haskell/attoparsec-0.10:=[profile?]
	>=dev-haskell/base64-bytestring-0.1:=[profile?]
	dev-haskell/binary:=[profile?]
	>=dev-haskell/cairo-0.13.0.3:=[profile?]
	dev-haskell/case-insensitive:=[profile?]
	>=dev-haskell/cereal-0.3.5:=[profile?]
	>=dev-haskell/configurator-0.2:=[profile?]
	>=dev-haskell/coroutine-object-0.2:=[profile?]
	>=dev-haskell/diff-0.3:=[profile?]
	>=dev-haskell/either-3.1:=[profile?]
	>=dev-haskell/errors-1.3:=[profile?]
	>=dev-haskell/fsnotify-0.0.7:=[profile?]
	>=dev-haskell/gd-3000.7:=[profile?]
	>=dev-haskell/handa-gdata-0.6.9.3:=[profile?]
	>=dev-haskell/hoodle-builder-0.3.0:=[profile?]
	>=dev-haskell/hoodle-parser-0.3.0:=[profile?]
	>=dev-haskell/hoodle-publish-0.2:=[profile?]
	>=dev-haskell/hoodle-render-0.5.0:=[profile?] <dev-haskell/hoodle-render-0.6:=[profile?]
	>=dev-haskell/hoodle-types-0.3.0:=[profile?]
	dev-haskell/http-types:=[profile?]
	>=dev-haskell/lens-2.5:=[profile?]
	>=dev-haskell/monad-loops-0.3:=[profile?]
	>dev-haskell/mtl-2:=[profile?]
	>dev-haskell/network-uri-2.6:=[profile?]
	>=dev-haskell/old-locale-1.0:=[profile?]
	>dev-haskell/pango-0.12:=[profile?]
	>=dev-haskell/poppler-0.12.2.2:=[profile?]
	dev-haskell/puremd5:=[profile?]
	>=dev-haskell/stm-2:=[profile?]
	>dev-haskell/strict-0.3:=[profile?]
	>=dev-haskell/svgcairo-0.12:=[profile?]
	>=dev-haskell/system-filepath-0.4:=[profile?]
	>=dev-haskell/text-0.10:=[profile?]
	dev-haskell/time-locale-compat:=[profile?]
	>=dev-haskell/transformers-0.3:=[profile?]
	>=dev-haskell/transformers-free-1.0:=[profile?]
	>=dev-haskell/unordered-containers-0.2:=[profile?]
	>=dev-haskell/uuid-1.2.7:=[profile?]
	>=dev-haskell/vector-0.10:=[profile?]
	dev-haskell/websockets:=[profile?]
	>=dev-haskell/xournal-parser-0.5.0.2:=[profile?]
	>=dev-lang/ghc-7.4.1:=
	virtual/libc
	x11-libs/libX11
	x11-libs/libXi
	dyre? ( >=dev-haskell/dyre-0.8.11:=[profile?] )
	gtk3? ( >=dev-haskell/gtk3-0.13.0.3:=[profile?] )
	!gtk3? ( >=dev-haskell/gtk-0.13.0.3:=[profile?] )
	hub? ( >=dev-haskell/dbus-0.10:=[profile?]
		dev-haskell/http-client:=[profile?]
		dev-haskell/http-conduit:=[profile?]
		>dev-haskell/network-2.6:=[profile?]
		dev-haskell/network-info:=[profile?]
		>=dev-haskell/network-simple-0.3:=[profile?]
		dev-haskell/persistent:=[profile?]
		dev-haskell/persistent-sqlite:=[profile?]
		dev-haskell/persistent-template:=[profile?]
		dev-haskell/resourcet:=[profile?] )
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.8
"

src_prepare() {
	epatch "${FILESDIR}"/${P}-time-1.5.patch
	epatch "${FILESDIR}"/${P}-haddock.patch
}

src_configure() {
	haskell-cabal_src_configure \
		$(cabal_flag dyre dyre) \
		$(cabal_flag gtk3 gtk3) \
		$(cabal_flag hub hub)
}
