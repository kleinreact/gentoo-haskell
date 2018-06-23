# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

# ebuild generated by hackport 0.5.5.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Conversion between markup formats"
HOMEPAGE="https://pandoc.org"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="GPL-2"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE="embed_data_files +network-uri static trypandoc"

RESTRICT=test # fails tests on newer skylighting versions

RDEPEND=">=dev-haskell/aeson-0.7:=[profile?] <dev-haskell/aeson-1.4:=[profile?]
	>=dev-haskell/aeson-pretty-0.8.5:=[profile?] <dev-haskell/aeson-pretty-0.9:=[profile?]
	>=dev-haskell/base-compat-0.9:=[profile?]
	>=dev-haskell/base64-bytestring-0.1:=[profile?] <dev-haskell/base64-bytestring-1.1:=[profile?]
	>=dev-haskell/blaze-html-0.9:=[profile?] <dev-haskell/blaze-html-0.10:=[profile?]
	>=dev-haskell/blaze-markup-0.8:=[profile?] <dev-haskell/blaze-markup-0.9:=[profile?]
	>=dev-haskell/case-insensitive-1.2:=[profile?] <dev-haskell/case-insensitive-1.3:=[profile?]
	>=dev-haskell/cmark-gfm-0.1.1:=[profile?] <dev-haskell/cmark-gfm-0.2:=[profile?]
	>=dev-haskell/data-default-0.4:=[profile?] <dev-haskell/data-default-0.8:=[profile?]
	>=dev-haskell/doctemplates-0.2.1:=[profile?] <dev-haskell/doctemplates-0.3:=[profile?]
	>=dev-haskell/exceptions-0.8:=[profile?] <dev-haskell/exceptions-0.11:=[profile?]
	>=dev-haskell/glob-0.7:=[profile?] <dev-haskell/glob-0.10:=[profile?]
	>=dev-haskell/haddock-library-1.1:=[profile?] <dev-haskell/haddock-library-1.6:=[profile?]
	>=dev-haskell/hslua-0.9.5:=[profile?] <dev-haskell/hslua-0.9.6:=[profile?]
	>=dev-haskell/hslua-module-text-0.1.2:=[profile?] <dev-haskell/hslua-module-text-0.2:=[profile?]
	>=dev-haskell/http-4000.0.5:=[profile?] <dev-haskell/http-4000.4:=[profile?]
	>=dev-haskell/http-client-0.4.30:=[profile?] <dev-haskell/http-client-0.6:=[profile?]
	>=dev-haskell/http-client-tls-0.2.4:=[profile?] <dev-haskell/http-client-tls-0.4:=[profile?]
	>=dev-haskell/http-types-0.8:=[profile?] <dev-haskell/http-types-0.13:=[profile?]
	>=dev-haskell/juicypixels-3.1.6.1:=[profile?] <dev-haskell/juicypixels-3.3:=[profile?]
	>=dev-haskell/mtl-2.2:=[profile?] <dev-haskell/mtl-2.3:=[profile?]
	>=dev-haskell/pandoc-types-1.17.4.2:=[profile?] <dev-haskell/pandoc-types-1.18:=[profile?]
	>=dev-haskell/parsec-3.1:=[profile?] <dev-haskell/parsec-3.2:=[profile?]
	>=dev-haskell/random-1:=[profile?] <dev-haskell/random-1.2:=[profile?]
	>=dev-haskell/safe-0.3:=[profile?] <dev-haskell/safe-0.4:=[profile?]
	>=dev-haskell/scientific-0.2:=[profile?] <dev-haskell/scientific-0.4:=[profile?]
	>=dev-haskell/semigroups-0.18:=[profile?] <dev-haskell/semigroups-0.19:=[profile?]
	>=dev-haskell/sha-1.6:=[profile?] <dev-haskell/sha-1.7:=[profile?]
	>=dev-haskell/skylighting-0.5.1:=[profile?] <dev-haskell/skylighting-0.8:=[profile?]
	>=dev-haskell/split-0.2:=[profile?] <dev-haskell/split-0.3:=[profile?]
	>=dev-haskell/syb-0.1:=[profile?] <dev-haskell/syb-0.8:=[profile?]
	>=dev-haskell/tagsoup-0.14.6:=[profile?] <dev-haskell/tagsoup-0.15:=[profile?]
	>=dev-haskell/temporary-1.1:=[profile?] <dev-haskell/temporary-1.4:=[profile?]
	>=dev-haskell/texmath-0.10:=[profile?] <dev-haskell/texmath-0.12:=[profile?]
	>=dev-haskell/text-0.11:=[profile?] <dev-haskell/text-1.3:=[profile?]
	>=dev-haskell/unordered-containers-0.2:=[profile?] <dev-haskell/unordered-containers-0.3:=[profile?]
	>=dev-haskell/vector-0.10:=[profile?] <dev-haskell/vector-0.13:=[profile?]
	>=dev-haskell/xml-1.3.12:=[profile?] <dev-haskell/xml-1.4:=[profile?]
	>=dev-haskell/yaml-0.8.11:=[profile?] <dev-haskell/yaml-0.9:=[profile?]
	>=dev-haskell/zip-archive-0.2.3.4:=[profile?] <dev-haskell/zip-archive-0.4:=[profile?]
	>=dev-haskell/zlib-0.5:=[profile?] <dev-haskell/zlib-0.7:=[profile?]
	>=dev-lang/ghc-7.10.1:=
	embed_data_files? ( >=dev-haskell/file-embed-0.0:=[profile?] <dev-haskell/file-embed-0.1:=[profile?] )
	network-uri? ( >=dev-haskell/network-2.6:=[profile?]
			>=dev-haskell/network-uri-2.6:=[profile?] <dev-haskell/network-uri-2.7:=[profile?] )
	!network-uri? ( >=dev-haskell/network-2:=[profile?] <dev-haskell/network-2.6:=[profile?] )
	trypandoc? ( >=dev-haskell/wai-0.3:=[profile?]
			dev-haskell/wai-extra:=[profile?] )
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.22.2.0
	test? ( >=dev-haskell/diff-0.2
		>=dev-haskell/executable-path-0.0
		>=dev-haskell/quickcheck-2.4
		>=dev-haskell/tasty-0.11
		>=dev-haskell/tasty-golden-2.3
		>=dev-haskell/tasty-hunit-0.9
		>=dev-haskell/tasty-quickcheck-0.8 )
"

src_prepare() {
	default

	cabal_chdeps \
		'Diff >= 0.2 && < 0.4' 'Diff >= 0.2' \
		'executable-path >= 0.0 && < 0.1' 'executable-path >= 0.0' \
		'tasty >= 0.11 && < 1.1' 'tasty >= 0.11' \
		'tasty-hunit >= 0.9 && < 0.11' 'tasty-hunit >= 0.9' \
		'tasty-quickcheck >= 0.8 && < 0.11' 'tasty-quickcheck >= 0.8' \
		'tasty-golden >= 2.3 && < 2.4' 'tasty-golden >= 2.3' \
		'QuickCheck >= 2.4 && < 2.12' 'QuickCheck >= 2.4'
}

src_configure() {
	haskell-cabal_src_configure \
		$(cabal_flag embed_data_files embed_data_files) \
		$(cabal_flag network-uri network-uri) \
		$(cabal_flag static static) \
		$(cabal_flag trypandoc trypandoc)
}
