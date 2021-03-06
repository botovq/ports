# $OpenBSD: Makefile,v 1.12 2021/02/20 20:15:29 cwen Exp $

# error: non-const lvalue reference to type '__builtin_va_list' cannot bind to
# a temporary of type 'va_list' (aka 'char *')
BROKEN-powerpc64 =	libast fails to build on hashalloc.c/tokscan.c
BROKEN-powerpc =	libast fails to build on hashalloc.c/tokscan.c

COMMENT =		AT&T Korn Shell

V =			2012-08-01
DISTNAME =		ast-ksh.${V}
PKGNAME =		ksh93-${V:S/-//g}
REVISION =		1

CATEGORIES =		shells

HOMEPAGE =		http://www.kornshell.com/

MAINTAINER =		Pascal Stumpf <pascal@stumpf.co>

# EPL
PERMIT_PACKAGE =	Yes

WANTLIB += c m util

MASTER_SITES =		https://spacehopper.org/mirrors/
DISTFILES =		${DISTNAME}${EXTRACT_SUFX} INIT.${V}${EXTRACT_SUFX}
EXTRACT_SUFX =		.tgz
DIST_SUBDIR =		ksh93

MAKE_ENV =		CC="${CC}" CCFLAGS="${CFLAGS}" SHELL=/bin/sh \
			TMPDIR="${WRKDIR}"

USE_GROFF =		Yes

WRKDIST =		${WRKDIR}
.if ${MACHINE_ARCH} == "hppa"
AST_ARCH =		${WRKSRC}/arch/openbsd.pa
.elif ${MACHINE_ARCH} == "powerpc"
AST_ARCH =		${WRKSRC}/arch/openbsd.ppc
.else
AST_ARCH =		${WRKSRC}/arch/openbsd.${MACHINE_ARCH}
.endif
AST_INC =		${AST_ARCH}/include/ast

do-build:
	cd ${WRKSRC} && env -i ${MAKE_ENV} /bin/sh bin/package make

do-install:
	${INSTALL_PROGRAM} ${AST_ARCH}/bin/ksh ${PREFIX}/bin/ksh93
	cd ${PREFIX}/bin && ln ksh93 rksh93
	${INSTALL_DATA} ${AST_ARCH}/lib/lib{ast,cmd,shell}.a ${PREFIX}/lib
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/ksh93
	${INSTALL_DATA} ${AST_ARCH}/fun/* ${PREFIX}/share/examples/ksh93
	${INSTALL_MAN} ${AST_ARCH}/man/man1/sh.1 ${PREFIX}/man/man1/ksh93.1
	cd ${PREFIX}/man/man1 && ln ksh93.1 rksh93.1
	${INSTALL_MAN} ${AST_ARCH}/man/man3/shell.3 ${PREFIX}/man/man3
	${INSTALL_DATA_DIR} ${PREFIX}/include/ast
	${INSTALL_DATA} ${AST_INC}/ast* ${PREFIX}/include/ast
	${INSTALL_DATA} ${AST_INC}/{sfio,sfio_s,shell,cdt,nval,option}.h \
		${PREFIX}/include/ast
	${INSTALL_DATA} ${AST_INC}/prototyped.h ${PREFIX}/include/ast

do-test:
	cd ${WRKSRC}/src/cmd/ksh93/tests && env -i \
		SHELL=${AST_ARCH}/bin/ksh \
		TMPDIR=${WRKDIR} \
		${AST_ARCH}/bin/ksh shtests

.include <bsd.port.mk>
