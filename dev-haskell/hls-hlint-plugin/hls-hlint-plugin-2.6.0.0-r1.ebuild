# Copyright 1999-2024 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.8.4.0.9999
#hackport: flags: -pedantic

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

RESTRICT="test" # Flaky tests

DESCRIPTION="Hlint integration plugin with Haskell Language Server"
HOMEPAGE="https://github.com/haskell/haskell-language-server/tree/master/plugins/hls-hlint-plugin#readme"

LICENSE="Apache-2.0"
SLOT="0/${PV}"
KEYWORDS="~amd64"

CABAL_CHDEPS=(
	'hlint                 >= 3.5 && < 3.7' 'hlint >=3.5'
)

RDEPEND="
	dev-haskell/aeson:=[profile?]
	dev-haskell/apply-refact:=[profile?]
	dev-haskell/data-default:=[profile?]
	>=dev-haskell/diff-0.4.0:=[profile?] <dev-haskell/diff-0.5:=[profile?]
	dev-haskell/extra:=[profile?]
	>=dev-haskell/ghc-exactprint-0.6.3.4:=[profile?]
	dev-haskell/ghc-lib-parser:=[profile?]
	dev-haskell/ghc-lib-parser-ex:=[profile?]
	~dev-haskell/ghcide-2.6.0.0:=[profile?]
	dev-haskell/hashable:=[profile?]
	>=dev-haskell/hlint-3.5:=[profile?]
	~dev-haskell/hls-plugin-api-2.6.0.0:=[profile?]
	dev-haskell/lens:=[profile?]
	>=dev-haskell/lsp-2.3:=[profile?] <dev-haskell/lsp-2.4
	dev-haskell/refact:=[profile?]
	dev-haskell/regex-tdfa:=[profile?]
	dev-haskell/temporary:=[profile?]
	dev-haskell/text:=[profile?]
	dev-haskell/unordered-containers:=[profile?]
	>=dev-lang/ghc-9.0.2:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-3.4.1.0
	test? (
		dev-haskell/hls-plugin-api
		~dev-haskell/hls-test-utils-2.6.0.0
		dev-haskell/lsp-types
		dev-haskell/row-types
	)
"

src_configure() {
	haskell-cabal_src_configure \
		--flag=-pedantic
}
