# $OpenBSD: Makefile,v 1.12 2021/07/10 07:58:30 sthen Exp $

COMMENT=	console-based multitool to explore and arrange tabular data

MODPY_EGG_VERSION=	2.5
DISTNAME=	visidata-${MODPY_EGG_VERSION}

CATEGORIES=	math textproc

HOMEPAGE=	https://visidata.org/

MAINTAINER=	Stuart Henderson <stu.ports@spacehopper.org>

# GPLv3
PERMIT_PACKAGE=	Yes

MODULES=		lang/python

MODPY_PI=		Yes
MODPY_SETUPTOOLS=	Yes

# tests are available but not included in the standard pypi download
NO_TEST=		Yes

.include <bsd.port.mk>
