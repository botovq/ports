# $OpenBSD: Makefile,v 1.21 2021/02/23 19:39:09 sthen Exp $

COMMENT=	CDDB audio CD track info access in Python

DISTNAME=	CDDB-1.4
PKGNAME=	py-${DISTNAME:L}
REVISION =	8
CATEGORIES=	audio

HOMEPAGE=	http://cddb-py.sourceforge.net/

# GPL 
PERMIT_PACKAGE=	Yes

WANTLIB += ${MODPY_WANTLIB}
WANTLIB += pthread

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=cddb-py/}
# avoid possible conflict with the audio/p5-cddb distfile
DIST_SUBDIR=	py-cddb

MODULES=	lang/python
MODPY_VERSION =	${MODPY_DEFAULT_VERSION_2}

NO_TEST=	Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/py-cddb
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/py-cddb

.include <bsd.port.mk>
