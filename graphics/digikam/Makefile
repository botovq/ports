# $OpenBSD: Makefile,v 1.72 2021/03/23 10:37:35 rsadowski Exp $

COMMENT =	KDE digital photo and video management utility

V =		7.2.0
DISTNAME =	digikam-${V}
CATEGORIES =	graphics

HOMEPAGE =	https://www.digikam.org/

MAINTAINER =	Rafael Sadowski <rsadowski@openbsd.org>

SHARED_LIBS +=  digikamcore               2.1 # 7.2
SHARED_LIBS +=  digikamdatabase           3.0 # 7.2
SHARED_LIBS +=  digikamgui                3.0 # 7.2

# LGPL, GPL and many others
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} GL GLU ICE KF5AkonadiContact KF5AkonadiCore
WANTLIB += KF5AkonadiWidgets KF5Auth KF5AuthCore KF5CalendarCore
WANTLIB += KF5Codecs KF5Completion KF5ConfigCore KF5ConfigGui
WANTLIB += KF5ConfigWidgets KF5Contacts KF5CoreAddons KF5FileMetaData
WANTLIB += KF5GrantleeTheme KF5I18n KF5IconThemes KF5ItemModels
WANTLIB += KF5JobWidgets KF5KIOCore KF5KIOGui KF5KIOWidgets KF5Notifications
WANTLIB += KF5NotifyConfig KF5Sane KF5Service KF5Solid KF5ThreadWeaver
WANTLIB += KF5WidgetsAddons KF5WindowSystem KF5XmlGui Magick++-6.Q16
WANTLIB += MagickCore-6.Q16 Qt5Concurrent Qt5Core Qt5DBus Qt5Gui
WANTLIB += Qt5Network Qt5OpenGL Qt5Positioning Qt5PrintSupport
WANTLIB += Qt5Qml Qt5QmlModels Qt5Quick Qt5Sql Qt5WebChannel Qt5WebEngineCore
WANTLIB += Qt5WebEngineWidgets Qt5Widgets Qt5X11Extras Qt5Xml
WANTLIB += Qt5XmlPatterns SM X11 Xext avcodec avdevice avfilter
WANTLIB += avformat avutil c exiv2 expat exslt glib-2.0 gphoto2
WANTLIB += gphoto2_port intl jasper jpeg lcms2 lensfun lqr-1 m
WANTLIB += marblewidget-qt5 opencv_calib3d opencv_core opencv_dnn
WANTLIB += opencv_features2d opencv_flann opencv_imgcodecs opencv_imgproc
WANTLIB += opencv_ml opencv_objdetect png swscale tiff usb-1.0
WANTLIB += x265 xml2 xslt z


MASTER_SITES =	${MASTER_SITE_KDE:=stable/digikam/${V}/}

FLAVORS =	mysql
FLAVOR ?=

MODULES =	devel/kf5

BUILD_DEPENDS =	devel/bison \
		devel/boost \
		devel/gettext,-tools \
		devel/git \
		devel/kf5/kdoctools \
		math/eigen3 \
		misc/shared-desktop-ontologies \
		multimedia/qtav

RUN_DEPENDS =	databases/sqlite3 \
		devel/desktop-file-utils \
		devel/kf5/kdoctools \
		multimedia/qtav \
		x11/gtk+3,-guic

LIB_DEPENDS =	devel/kf5/kauth \
		devel/kf5/kcalendarcore \
		devel/kf5/kcodecs \
		devel/kf5/kcompletion \
		devel/kf5/kconfig \
		devel/kf5/kconfigwidgets \
		devel/kf5/kcontacts \
		devel/kf5/kcoreaddons \
		devel/kf5/kfilemetadata \
		devel/kf5/ki18n \
		devel/kf5/kiconthemes \
		devel/kf5/kio \
		devel/kf5/kitemmodels \
		devel/kf5/kjobwidgets \
		devel/kf5/knotifyconfig \
		devel/kf5/kservice \
		devel/kf5/kwindowsystem \
		devel/kf5/kxmlgui \
		devel/kf5/solid \
		devel/kf5/threadweaver \
		graphics/ImageMagick \
		graphics/exiv2 \
		graphics/ffmpeg \
		graphics/jasper \
		graphics/jpeg \
		graphics/lcms2 \
		graphics/lensfun \
		graphics/libgphoto2 \
		graphics/liblqr \
		graphics/opencv \
		graphics/png \
		graphics/tiff \
		multimedia/x265 \
		x11/kde-applications/akonadi \
		x11/kde-applications/akonadi-contacts \
		x11/kde-applications/libksane \
		x11/kde-applications/marble \
		x11/kde-applications/grantleetheme \
		x11/qt5/qtdeclarative \
		x11/qt5/qtwebchannel \
		x11/qt5/qtwebengine \
		x11/qt5/qtx11extras \
		x11/qt5/qtxmlpatterns

CONFIGURE_ARGS +=	-DCMAKE_DISABLE_FIND_PACKAGE_Doxygen=ON \
			-DENABLE_QWEBENGINE=ON

.if ${FLAVOR:Mmysql}
BUILD_DEPENDS +=	databases/mariadb
RUN_DEPENDS +=		databases/mariadb
CONFIGURE_ARGS +=	-DENABLE_MYSQLSUPPORT=ON
.endif

# XXX W^X binary outside wxallowed
TEST_IS_INTERACTIVE =	X11

.include <bsd.port.mk>
