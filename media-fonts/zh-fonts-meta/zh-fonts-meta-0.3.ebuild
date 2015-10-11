# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI="2"

DESCRIPTION="Meta package for chinese fonts"
HOMEPAGE=""

LICENSE="as-is"
SLOT="0"

# when unmasking for an arch
# double check none of the deps are still masked !
KEYWORDS="amd64 x86 arm"

IUSE="+X"

S=${WORKDIR}

DEPEND="
	media-fonts/dejavu[X=]
	media-fonts/wqy-bitmapfont[X=]
	media-fonts/wqy-microhei[X=]
	media-fonts/wqy-zenhei[X=]"
PDEPEND=""

pkg_postinst() {
	elog
	elog "You have installed a chinese fonts collection."
	elog
}
