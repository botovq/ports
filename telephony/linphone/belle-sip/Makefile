# $OpenBSD: Makefile,v 1.2 2021/07/10 16:58:01 landry Exp $

COMMENT =	library implementing SIP (RFC3261) transport

MODULE =	belle-sip

SHARED_LIBS +=  bellesip 0.0 # 1

CONFIGURE_ARGS= -DENABLE_STATIC=NO
CONFIGURE_ARGS += -DENABLE_TESTS=NO

LIB_DEPENDS =	telephony/linphone/bctoolbox \
		telephony/linphone/belr
WANTLIB += ${COMPILER_LIBCXX} bctoolbox belr m z

pre-configure:
	${SUBST_CMD} ${WRKSRC}/CMakeLists.txt

#do-test:
#	${WRKBUILD}/tester/belle_sip_tester --verbose --resource-dir ${WRKSRC}/tester/

.include <bsd.port.mk>
