# $OpenBSD: Makefile,v 1.1.1.1 2020/02/06 14:10:05 kmos Exp $

COMMENT=        script to copy one's SSH keys to remote hosts
V=              8.1p1
DISTNAME=       openssh-${V}
PKGNAME=        ssh-copy-id-${V:S/p/pl/}
CATEGORIES=     sysutils

HOMEPAGE=       http://git.hands.com/ssh-copy-id
MAINTAINER=     Jan-Piet Mens <ports@jpmens.net>

# License free to use
PERMIT_PACKAGE= Yes

MASTER_SITES=   https://cdn.openbsd.org/pub/OpenBSD/OpenSSH/portable/

NO_BUILD=	Yes
NO_TEST=	Yes
PKG_ARCH=	*

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/contrib/ssh-copy-id ${PREFIX}/bin
	${INSTALL_MAN_DIR} ${PREFIX}/man/man1
	${INSTALL_MAN} ${WRKSRC}/contrib/ssh-copy-id.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
