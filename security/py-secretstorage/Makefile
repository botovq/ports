# $OpenBSD: Makefile,v 1.20 2020/10/03 15:39:59 ajacoutot Exp $

COMMENT=		secure storing of passwords using the SecretService DBus API

MODPY_EGG_VERSION=	2.3.1
DISTNAME=		SecretStorage-${MODPY_EGG_VERSION}
PKGNAME=		py-${DISTNAME:L}
REVISION=		4

CATEGORIES=   		security

# BSD
PERMIT_PACKAGE=	Yes

MODULES=		lang/python

MODPY_PI=		Yes
MODPY_SETUPTOOLS=	Yes

NO_TEST=		Yes

RUN_DEPENDS=		devel/py-gobject3${MODPY_FLAVOR} \
			security/py-cryptography${MODPY_FLAVOR} \
			x11/dbus-python${MODPY_FLAVOR}

FLAVORS=		python3
FLAVOR=			python3

# org.freedesktop.secrets
RUN_DEPENDS +=		x11/gnome/keyring

.include <bsd.port.mk>
