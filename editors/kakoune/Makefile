# $OpenBSD: Makefile,v 1.3 2020/09/04 03:43:29 gnezdo Exp $

COMMENT =		modal code editor with a focus on interactivity

V =			2020.09.01
DISTNAME =		kakoune-${V}

CATEGORIES =		editors

HOMEPAGE =		https://kakoune.org/

MAINTAINER =		Frederic Galusik <openbsd@galusik.fr>

WANTLIB =		${COMPILER_LIBCXX} c curses m

MASTER_SITES =		https://github.com/mawww/kakoune/releases/download/v${V}/

EXTRACT_SUFX =		.tar.bz2

# Public domain
PERMIT_PACKAGE =	Yes

# -std=c++17
COMPILER =		base-clang ports-gcc
MAKE_ENV =		CXX="${CXX}" CXXFLAGS="${CXXFLAGS}" gzip_man=no
FAKE_FLAGS =		PREFIX="${TRUEPREFIX}"

USE_GMAKE =		Yes

.include <bsd.port.mk>
