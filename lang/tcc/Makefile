# $OpenBSD: Makefile,v 1.5 2021/07/09 20:55:35 bcallah Exp $

ONLY_FOR_ARCHS =	amd64 arm64 armv7 i386 riscv64

COMMENT =	tiny C compiler
DISTNAME =	tcc-0.9.27.20210709
CATEGORIES =	lang

# 0.9.27 release pre-dates OpenBSD support; use GH_COMMIT
GH_ACCOUNT =	TinyCC
GH_PROJECT =	tinycc
GH_COMMIT =	46bf3f940c24f277e6cacdbe468db6f781f80f48

HOMEPAGE =	https://bellard.org/tcc/
MAINTAINER =	Brian Callahan <bcallah@openbsd.org>

# LGPLv2.1+
# stdatomic.h: Apache 2.0 with LLVM exceptions
PERMIT_PACKAGE =	Yes

WANTLIB += c m pthread

# --with-selinux (misnomer for mmap/mprotect) required for -run
CONFIGURE_STYLE =	simple
CONFIGURE_ARGS =	--cc="${CC}" \
			--docdir="${PREFIX}/share/doc/tcc" \
			--extra-cflags="${CFLAGS} ${GIT_HASH}" \
			--infodir="${PREFIX}/info" \
			--mandir="${PREFIX}/man" \
			--with-selinux

USE_GMAKE =	Yes

GIT_HASH =	-DTCC_GIT_HASH='\\\"`echo ${GH_COMMIT} | cut -c1-7`\\\"'

.include <bsd.port.mk>
