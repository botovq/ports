# $OpenBSD: Makefile,v 1.17 2021/03/18 07:57:01 fcambus Exp $

COMMENT =	text editor inspired by Norton Commander
DISTNAME =	le-1.16.8
CATEGORIES =	editors

HOMEPAGE =	http://lav.yar.ru/programs.html
MAINTAINER =	Ivan Ivanov <rambiusparkisanius@gmail.com>

# GPLv3+
PERMIT_PACKAGE =	Yes

WANTLIB +=	${COMPILER_LIBCXX} c curses m

COMPILER =		base-clang ports-gcc base-gcc

MASTER_SITES =	http://lav.yar.ru/download/le/

CONFIGURE_STYLE =	gnu

post-install:
	@rm -rf ${PREFIX}/share/applications \
		${PREFIX}/share/icons

.include <bsd.port.mk>
