# $OpenBSD: Makefile,v 1.10 2021/06/30 10:25:00 ajacoutot Exp $

# MASTER_SITES changes at each version; when looking for updates, try searching
# ${HOMEPAGE} for a linux driver, for e.g. sx200
PORTROACH=		ignore:1
MASTER_SITES=		https://download3.ebz.epson.net/dsc/f/03/00/12/87/86/a97f36f9db998e7d0d25fc963568f207073b85ad/

COMMENT=		printer driver for Epson ESC/P-R inkjets

DISTNAME=		epson-inkjet-printer-escpr-1.7.12
EXTRACT_SUFX=		-1lsb3.2.tar.gz

SHARED_LIBS +=	escpr                     0.0 # 1.0

CATEGORIES=		print

HOMEPAGE=		http://download.ebz.epson.net/dsc/search/01/search/?OSC=LX

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

# GPLv2+
PERMIT_PACKAGE=		Yes

WANTLIB += avahi-client avahi-common c cups cupsimage dbus-1 execinfo
WANTLIB += gmp gnutls hogweed iconv idn2 intl m nettle p11-kit
WANTLIB += pthread tasn1 unistring z

LIB_DEPENDS=		devel/gettext,-runtime \
			print/cups,-libs

CONFIGURE_STYLE=	autoreconf
AUTORECONF=		sh ${WRKSRC}/bootstrap
AUTOCONF_VERSION=	2.69
AUTOMAKE_VERSION=	1.16

CONFIGURE_ARGS=		--with-cupsfilterdir=${LOCALBASE}/libexec/cups/filter \
			--with-cupsppddir=${LOCALBASE}/share/ppd

CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

DEBUG_PACKAGES=		${BUILD_PACKAGES}

FIX_CRLF_FILES=		src/linux_cmn.c lib/epson-escpr-api.c \
			lib/epson-typedefs.h lib/epson-usb.c

.include <bsd.port.mk>
