# $OpenBSD: Makefile,v 1.5 2021/03/08 13:59:27 sthen Exp $

COMMENT =	package manager for Go

VERSION =	0.13.2
GH_ACCOUNT =	Masterminds
GH_PROJECT =	glide
GH_TAGNAME =	v${VERSION}
REVISION =	1

CATEGORIES =	sysutils

HOMEPAGE =	https://glide.sh/

WANTLIB +=	c pthread
#MIT
PERMIT_PACKAGE =	Yes

MODULES =	lang/go

SEPARATE_BUILD =	Yes

.include <bsd.port.mk>
