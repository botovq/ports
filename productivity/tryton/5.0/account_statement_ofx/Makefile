# $OpenBSD: Makefile,v 1.7 2021/04/05 15:58:14 semarie Exp $

MODPY_EGG_VERSION =	5.0.4
TRYTON_MODULE =		account_statement_ofx

TRYTON_DEPENDS +=	account_statement \
			bank \
			party

RUN_DEPENDS +=		textproc/py-ofxparse${MODPY_FLAVOR}

.include <bsd.port.mk>
