# $OpenBSD: Makefile,v 1.17 2020/10/18 22:00:52 kn Exp $

COMMENT=	provider bindings for Augeas

DISTNAME=	ruby-augeas-0.5.0
PKGNAME=	${DISTNAME:S/ruby-//}
REVISION=	7
CATEGORIES=	sysutils

HOMEPAGE=	http://augeas.net/

MAINTAINER=	Klemens Nanni <kn@openbsd.org>

# LGPLv2.1
PERMIT_PACKAGE=	Yes

MODULES=	lang/ruby

WANTLIB+=	augeas pthread xml2

LIB_DEPENDS=	sysutils/augeas

CONFIGURE_STYLE=ruby gem ext

pre-configure:
	${SUBST_CMD} ${WRKDIST}/ext/augeas/extconf.rb

.include <bsd.port.mk>
