# $OpenBSD: Makefile,v 1.189 2021/06/20 22:11:16 bluhm Exp $

COMMENT-main=		XML parsing library
COMMENT-python=		Python bindings for libxml

VERSION=		2.9.12
DISTNAME=		libxml2-${VERSION}
PKGNAME-main=		libxml-${VERSION}
PKGNAME-python=		py3-libxml-${VERSION}
SHARED_LIBS +=	xml2                 17.0     # 11.9
CATEGORIES=		textproc
MASTER_SITES=		ftp://xmlsoft.org/libxml/
SUPDISTFILES =		${DISTFILES}.asc

HOMEPAGE=		http://xmlsoft.org/

# BSD-like
PERMIT_PACKAGE=	Yes

WANTLIB=		iconv lzma m z

LIB_DEPENDS=		archivers/xz \
			converters/libiconv

CONFIGURE_STYLE=	autoconf
AUTOCONF_VERSION=	2.69
CONFIGURE_ARGS+=	--enable-static \
			--with-html-dir="${PREFIX}/share/doc" \
			--with-html-subdir="libxml2/html" \
			--with-iconv="${LOCALBASE}" \
			--with-lzma="${LOCALBASE}"

# only used to fetch data during regression test
CONFIGURE_ENV=		WGET=/usr/bin/ftp

DEBUG_PACKAGES =	${BUILD_PACKAGES}

PSEUDO_FLAVORS=		no_python
FLAVOR?=

MULTI_PACKAGES=		-main -python

WANTLIB-main=		${WANTLIB} c pthread
RUN_DEPENDS-main=

.include <bsd.port.arch.mk>

.if ${BUILD_PACKAGES:M-python}
MODULES+=		lang/python
LIB_DEPENDS-python=	textproc/libxml,-main=${VERSION} \
			${MODPY_LIB_DEPENDS} \
			converters/libiconv
WANTLIB-python=		${WANTLIB} ${MODPY_WANTLIB} \
			intl pthread util xml2>=11
FAKE_FLAGS=		exampledir=${PREFIX}/share/examples/libxml2
CONFIGURE_ARGS+=	--with-python
.else
CONFIGURE_ARGS+=	--without-python
.endif

TEST_DEPENDS=		devel/gmake

post-configure:
	sed -e 's,@PREFIX@,${PREFIX},' <${FILESDIR}/rebuild >${WRKBUILD}/rebuild

post-install:
	${INSTALL_SCRIPT_DIR} ${PREFIX}/share/libxml2
	${INSTALL_SCRIPT} ${WRKBUILD}/rebuild ${PREFIX}/share/libxml2/
.if ${BUILD_PACKAGES:M-python}
	${MODPY_BIN} ${MODPY_LIBDIR}/compileall.py ${WRKINST}${MODPY_SITEPKG}
.endif

do-test:
	@cd ${WRKBUILD} && exec ${SETENV} ${MAKE_ENV} ${GMAKE} \
		${ALL_TEST_FLAGS} -f ${MAKE_FILE} ${TEST_TARGET}

.include <bsd.port.mk>
