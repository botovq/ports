# $OpenBSD: Makefile,v 1.27 2021/03/14 16:47:17 pascal Exp $

COMMENT =		Not Quite Perl

V =			2021.02
DISTNAME =		nqp-$V

MOAR_VERSION =		2021.02

CATEGORIES =		lang

MAINTAINER =		Pascal Stumpf <pascal@stumpf.co>

# Artistic 2
PERMIT_PACKAGE =	Yes

WANTLIB =		c moar

GH_ACCOUNT =		Raku
GH_PROJECT =		nqp
GH_TAGNAME =		$V

# Take the missing WRKDIST/3rdparty/nqp-configure from rakudo.
MASTER_SITES0 =		https://rakudo.org/dl/rakudo/
RAKUDO_VERSION =	2021.02.1
DISTFILES =		nqp-$V.tar.gz \
			rakudo-${RAKUDO_VERSION}.tar.gz:0
EXTRACT_ONLY =		nqp-$V.tar.gz

BUILD_DEPENDS =		math/libtommath
LIB_DEPENDS =		lang/moarvm>=${MOAR_VERSION}

CONFIGURE_STYLE =	simple
CONFIGURE_SCRIPT =	/usr/bin/perl Configure.pl
CONFIGURE_ARGS =	--prefix="${LOCALBASE}" \
			--backends=moar
USE_GMAKE =		Yes
MAKE_FLAGS +=		VERBOSE_BUILD=Yes

post-extract:
	cd ${WRKDIST}/3rdparty && \
		pax -rzf ${FULLDISTDIR}/rakudo-${RAKUDO_VERSION}.tar.gz \
		-s':.*/3rdparty/::' '*/3rdparty/nqp-configure'

.include <bsd.port.mk>
