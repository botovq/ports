# $OpenBSD: Makefile,v 1.9 2021/07/02 13:53:12 sthen Exp $

PORTROACH=	limit:^8\.0
PHP_VERSION=	8.0.8
PHP_PKGSPEC=	>=8.0,<8.1

# for 6.9->7.0, keep above version/revision in 6.9-stable
REVISION=	0

DEBUG_PACKAGES=		${BUILD_PACKAGES}

BUILD_DEPENDS+=		devel/bison
YACC=			bison

CONFIGURE_ARGS+=	--without-valgrind

.include <bsd.port.mk>
