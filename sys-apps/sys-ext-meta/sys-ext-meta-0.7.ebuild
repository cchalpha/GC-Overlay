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

IUSE=""

S=${WORKDIR}

RDEPEND="
	sys-firmware/intel-microcode
	app-editors/vim
	app-misc/tmux
	media-sound/alsa-utils
	net-fs/autofs
	net-fs/cifs-utils
	net-fs/nfs-utils
	sys-apps/hdparm
	sys-fs/btrfs-progs
	sys-fs/dosfstools
	sys-power/acpid
	sys-power/pm-utils
	sys-process/dcron
	sys-process/htop
	sys-process/schedtool
	app-arch/lbzip2[symlink]
	app-arch/lz4
	app-arch/zstd"
DEPEND=""
PDEPEND=""

pkg_postinst() {
	elog
	elog "You have installed a personal system extend meta package."
	elog "It may include applications which you don't need or like."
	elog
}
