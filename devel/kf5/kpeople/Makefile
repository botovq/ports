# $OpenBSD: Makefile,v 1.14 2020/09/07 14:48:49 rsadowski Exp $

COMMENT =	KDE framework for aggregating and accessing people contacts
DISTNAME =	kpeople-${VERSION}

SHARED_LIBS =  KF5People         6.0
SHARED_LIBS += KF5PeopleBackend  6.0
SHARED_LIBS += KF5PeopleWidgets  6.0

WANTLIB += ${COMPILER_LIBCXX} KF5CoreAddons KF5I18n KF5ItemViews
WANTLIB += KF5WidgetsAddons Qt5Core Qt5DBus Qt5Gui Qt5Network
WANTLIB += Qt5Qml Qt5Sql Qt5Widgets m

BUILD_DEPENDS =	x11/qt5/qtquickcontrols \
		devel/gettext,-tools

RUN_DEPENDS =	x11/qt5/qtquickcontrols

LIB_DEPENDS =	devel/kf5/kcoreaddons>=${MODKF5_VERSION} \
		devel/kf5/ki18n>=${MODKF5_VERSION} \
		devel/kf5/kitemviews>=${MODKF5_VERSION} \
		devel/kf5/kwidgetsaddons>=${MODKF5_VERSION} \
		x11/qt5/qtdeclarative

TEST_IS_INTERACTIVE =	X11
PORTHOME =		${WRKDIR}

.include <bsd.port.mk>
