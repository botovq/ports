# $OpenBSD: Makefile,v 1.64 2021/05/09 09:10:17 ajacoutot Exp $

COMMENT=	powerful newsreader

V=		0.140
DISTNAME=	pan-${V}
CATEGORIES=	news x11
REVISION=	7

HOMEPAGE=	http://pan.rebelbase.com/

MAINTAINER=	Pierre-Emmanuel Andre <pea@openbsd.org>

# GPLv2
PERMIT_PACKAGE=	Yes

WANTLIB += ${COMPILER_LIBCXX} atk-1.0 c cairo cairo-gobject enchant
WANTLIB += enchant-2 gdk-3 gdk_pixbuf-2.0 gio-2.0 glib-2.0 gmime-2.6
WANTLIB += gmodule-2.0 gnome-keyring gnutls gobject-2.0 gthread-2.0
WANTLIB += gtk-3 gtkspell3-3 harfbuzz iconv intl m notify pango-1.0
WANTLIB += pangocairo-1.0 z

COMPILER =		base-clang ports-gcc base-gcc

USE_GMAKE= 	Yes

MASTER_SITES=	http://pan.rebelbase.com/download/releases/${V}/source/

MODULES=	textproc/intltool

LIB_DEPENDS=	devel/libnotify \
		mail/gmime \
		security/gnutls \
		textproc/enchant \
		textproc/gtkspell3 \
		x11/gnome/libgnome-keyring
RUN_DEPENDS=	devel/desktop-file-utils

CONFIGURE_STYLE=gnu

# GLIB_VERSION_MIN_REQUIRED to fix build with GLib >=2.68
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include -DGLIB_VERSION_MIN_REQUIRED=GLIB_VERSION_2_26" \
		LDFLAGS="-L${LOCALBASE}/lib -liconv"

CONFIGURE_ARGS=	--with-gtk3 --enable-libnotify --enable-gkr --with-gnutls

.include <bsd.port.mk>
