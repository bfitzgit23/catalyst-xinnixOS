# Copyright 1999-2023 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=6

inherit php-pear-r2

DESCRIPTION="Provides methods for spelling numerals in words"
HOMEPAGE="https://pear.php.net/package/Numbers_Words"
LICENSE="PHP-3.01"
SLOT="0"
KEYWORDS="~alpha amd64 ~hppa ~ia64 ppc ppc64 sparc x86"
IUSE="test"
RESTRICT="!test? ( test )"

RDEPEND="dev-php/PEAR-Math_BigInteger"
DEPEND="test? ( ${RDEPEND} dev-php/phpunit )"

DOCS=( ChangeLog README )

src_test() {
	phpunit tests || die 'test suite failed'
}
