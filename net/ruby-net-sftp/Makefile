# $OpenBSD: Makefile,v 1.22 2020/11/11 01:33:06 jeremy Exp $

COMMENT =	pure-ruby implementation of the SFTP client protocol

DISTNAME =	net-sftp-2.1.2
CATEGORIES =	net

# bsd/ruby
PERMIT_PACKAGE =		Yes

MODULES =		lang/ruby

BUILD_DEPENDS =		${RUN_DEPENDS}
RUN_DEPENDS =		net/ruby-net-ssh,${MODRUBY_FLAVOR}>=2.6.5

CONFIGURE_STYLE = 	ruby gem

MODRUBY_TEST =		rake

TEST_DEPENDS =		devel/ruby-mocha,${MODRUBY_FLAVOR}

.include <bsd.port.mk>
