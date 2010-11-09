# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
# http://overlays.gentoo.org/proj/sunrise/browser/reviewed/sys-block/compcache-tools/compcache-tools-0.6.ebuild 
# Commiter in sunrise -  Russell Harmon
# Also see ChangeLog

EAPI=3

inherit eutils toolchain-funcs

MY_P="${P/-tools/}"
DESCRIPTION="Compressed in-memory swap device for Linux"
HOMEPAGE="http://code.google.com/p/compcache/"
SRC_URI="http://compcache.googlecode.com/files/${MY_P}.tar.gz"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

S="${WORKDIR}/${MY_P}/sub-projects/rzscontrol"

src_prepare() {
	epatch "${FILESDIR}"/*_gentoo.patch
}

src_compile() {
	tc-export CC
	default
}

src_install() {
	newinitd "${FILESDIR}"/init.d "${MY_P}"
	newconfd "${FILESDIR}"/conf.d "${MY_P}"

	dobin rzscontrol || die
	doman man/rzscontrol.1 || die
}
