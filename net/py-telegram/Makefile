# $OpenBSD: Makefile,v 1.1.1.1 2021/06/09 10:43:16 landry Exp $

COMMENT =	python wrapper for Telegram tdlib

MODPY_EGG_VERSION =	0.14.0

DISTNAME =	python-telegram-${MODPY_EGG_VERSION}
PKGNAME =	${DISTNAME:S/^python-/py-/}

CATEGORIES =	net

HOMEPAGE =	https://github.com/alexander-akhmetov/python-telegram

# MIT
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

MODPY_PI =		Yes

FLAVORS =		python3
FLAVOR =		python3

RUN_DEPENDS =		net/tdlib
MODPY_PYTEST =		No

# remove bundled binaries
post-install:
	rm -rf ${PREFIX}/lib/python${MODPY_VERSION}/site-packages/telegram/lib

.include <bsd.port.mk>
