# $OpenBSD: Makefile,v 1.33 2020/10/11 21:10:15 daniel Exp $

COMMENT =		reference implementation of ACPI tools
DISTNAME =		acpica-unix-20200925
PKGNAME =		${DISTNAME:S/-unix//}

CATEGORIES =		devel

HOMEPAGE =		https://acpica.org/

# BSD-ish (or GPLv2 or Intel's own license: triple-licensed)
PERMIT_PACKAGE =	Yes

WANTLIB =		c pthread

MASTER_SITES =		https://acpica.org/sites/acpica/files/

USE_GMAKE =		Yes
BUILD_DEPENDS =		devel/bison
MAKE_FLAGS =		CC="${CC}" HOST=_LINUX
FAKE_FLAGS =		DESTDIR=

do-test:
	cd ${WRKSRC}/tests/templates && sh templates.sh 1

.include <bsd.port.mk>
