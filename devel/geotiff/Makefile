# $OpenBSD: Makefile,v 1.24 2021/07/06 08:13:05 landry Exp $

COMMENT=	GIS TIFF interchange library

DISTNAME=	libgeotiff-1.7.0
CATEGORIES=	devel geo
SHARED_LIBS=	geotiff 3.1 # 6.0
WRKSRC=	${WRKDIR}/${DISTNAME:S/rc1//}

HOMEPAGE=	http://trac.osgeo.org/geotiff/

MAINTAINER=	Landry Breuil <landry@openbsd.org>

# MIT
PERMIT_PACKAGE=	Yes

MASTER_SITES=		http://download.osgeo.org/geotiff/libgeotiff/

CONFIGURE_STYLE=	gnu
CONFIGURE_ENV +=	CFLAGS="-I${LOCALBASE}/include -fPIC $(COPTS)" \
			LDFLAGS=-L${LOCALBASE}/lib

CONFIGURE_ARGS=		--with-jpeg=${LOCALBASE} \
			--with-proj=${LOCALBASE} \
			--with-libtiff=${LOCALBASE} \
			--with-libz

WANTLIB=		c jpeg lzma m z proj tiff pthread sqlite3 zstd
WANTLIB +=		crypto curl nghttp2 ssl

LIB_DEPENDS=		devel/proj>=6 \
			graphics/tiff

.include <bsd.port.mk>
