# $OpenBSD: Makefile,v 1.3 2020/07/03 21:12:30 sthen Exp $

MODPY_EGG_VERSION =	5.2.1
TRYTON_MODULE =		account_payment_sepa_cfonb
REVISION =		0

TRYTON_DEPENDS +=	account_payment \
			account_payment_sepa \
			company \
			bank \
			party

RUN_DEPENDS +=		www/py-genshi${MODPY_FLAVOR} \
			textproc/py-lxml${MODPY_FLAVOR}

TEST_DEPENDS +=		devel/py-mock${MODPY_FLAVOR}

.include <bsd.port.mk>
