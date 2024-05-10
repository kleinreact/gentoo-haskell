# Copyright 1999-2024 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.8.4.0.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Retrie integration plugin for Haskell Language Server"
HOMEPAGE="https://github.com/haskell/haskell-language-server/tree/master/plugins/hls-retrie-plugin#readme"

LICENSE="Apache-2.0"
SLOT="0/${PV}"
KEYWORDS="~amd64"

RDEPEND="
	dev-haskell/aeson:=[profile?]
	dev-haskell/extra:=[profile?]
	~dev-haskell/ghcide-2.6.0.0:=[profile?]
	dev-haskell/hashable:=[profile?]
	~dev-haskell/hls-plugin-api-2.6.0.0:=[profile?]
	dev-haskell/hls-refactor-plugin:=[profile?]
	dev-haskell/lens:=[profile?]
	>=dev-haskell/lsp-2.3:=[profile?] <dev-haskell/lsp-2.4
	>=dev-haskell/lsp-types-2.1:=[profile?] <dev-haskell/lsp-types-2.1.1
	>=dev-haskell/retrie-0.1.1.0:=[profile?]
	dev-haskell/safe-exceptions:=[profile?]
	dev-haskell/text:=[profile?]
	dev-haskell/unordered-containers:=[profile?]
	>=dev-lang/ghc-9.0.2:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-3.4.1.0
	test? (
		dev-haskell/hls-plugin-api
		~dev-haskell/hls-test-utils-2.6.0.0
	)
"
