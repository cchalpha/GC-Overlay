# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI="2"

DESCRIPTION="Meta package for chinese fonts"
HOMEPAGE=""

LICENSE="as-is"
SLOT="0"

# when unmasking for an arch
# double check none of the deps are still masked !
KEYWORDS="alpha amd64 ia64 ppc ppc64 sparc x86"

IUSE=""

S=${WORKDIR}

DEPEND="
	app-admin/sudo
	app-editors/vim[bash-completion]
	media-sound/alsa-utils
	net-fs/autofs
	net-fs/nfs-utils
	sys-apps/hdparm
	sys-power/acpid
	sys-power/hibernate-script"
RDEPEND=""
PDEPEND=""

pkg_postinst() {
	elog
	elog "You have installed a personal system extend meta package."
	elog "It may include applications which you don't need or like."
	elog
}
