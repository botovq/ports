# $OpenBSD: Makefile,v 1.2 2021/05/25 01:49:57 bcallah Exp $

COMMENT =	compiler for Inform 6 interactive fiction
PKGNAME =	${DISTNAME:L}

GH_ACCOUNT =	DavidKinder
GH_PROJECT =	Inform6
GH_TAGNAME =	v6.35

WANTLIB += c

RUN_DEPENDS =	games/inform6/library

MAKE_FLAGS =	CC="${CC}" CFLAGS="${CFLAGS}"

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/inform ${PREFIX}/bin

.include <bsd.port.mk>
