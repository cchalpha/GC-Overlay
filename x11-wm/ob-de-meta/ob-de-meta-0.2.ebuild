# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI="2"

DESCRIPTION="Meta package for openbox desktop envierment"
HOMEPAGE=""

LICENSE="as-is"
SLOT="0"

# when unmasking for an arch
# double check none of the deps are still masked !
KEYWORDS="alpha amd64 ia64 ppc ppc64 sparc x86"

IUSE=""

S=${WORKDIR}

RDEPEND="
	app-i18n/xsunpinyin
	media-gfx/feh
	x11-libs/gksu
	x11-misc/tint2
	gnome-base/librsvg
	x11-themes/hicolor-icon-theme
	x11-themes/vanilla-dmz-xcursors
	x11-wm/openbox
	x11-terms/rxvt-unicode"
DEPEND=""
PDEPEND=""

pkg_postinst() {
	elog
	elog "You have installed a personal system extend meta package."
	elog "It may include applications which you don't need or like."
	elog
}
