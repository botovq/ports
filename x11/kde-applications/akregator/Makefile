# $OpenBSD: Makefile,v 1.12 2021/06/19 18:34:31 rsadowski Exp $

COMMENT =	news feed reader
DISTNAME =	akregator-${VERSION}
CATEGORIES =	net www

SHARED_LIBS +=  akregatorinterfaces       1.0 # 5.13.2
SHARED_LIBS +=  akregatorprivate          2.0 # 5.13.2

WANTLIB += ${COMPILER_LIBCXX} Grantlee_Templates KF5AkonadiCore
WANTLIB += KF5AkonadiMime KF5Auth KF5AuthCore KF5Codecs KF5Completion
WANTLIB += KF5ConfigCore KF5ConfigGui KF5ConfigWidgets KF5Contacts
WANTLIB += KF5CoreAddons KF5Crash KF5GrantleeTheme KF5I18n KF5ItemModels
WANTLIB += KF5JobWidgets KF5KCMUtils KF5KIOCore KF5KIOGui KF5KIOWidgets
WANTLIB += KF5KontactInterface KF5Libkdepim KF5Libkleo KF5MessageCore
WANTLIB += KF5MessageViewer KF5Mime KF5MimeTreeParser KF5Notifications
WANTLIB += KF5NotifyConfig KF5Parts KF5PimCommon KF5PimTextEdit
WANTLIB += KF5Service KF5Solid KF5SonnetUi KF5Syndication KF5TextWidgets
WANTLIB += KF5WebEngineViewer KF5WidgetsAddons KF5WindowSystem
WANTLIB += KF5XmlGui Qt5Concurrent Qt5Core Qt5DBus Qt5Gui Qt5Network
WANTLIB += Qt5Positioning Qt5PrintSupport Qt5Qml Qt5QmlModels
WANTLIB += Qt5Quick Qt5WebChannel Qt5WebEngineCore Qt5WebEngineWidgets
WANTLIB += Qt5Widgets Qt5Xml c gpgmepp m qgpgme

MODKDE5_TRANSLATIONS = yes
MODKDE5_ICON_CACHE = yes
MODKDE5_DESKTOP_FILE = yes
MODKDE5_DOCS = yes

MODKF5_L10N_CONFLICT = yes
MODKF5_I18N_CONFLICT = yes

BUILD_DEPENDS =	devel/boost \
		devel/kf5/kitemviews \
		devel/kf5/ktexteditor \
		devel/kf5/solid  \
		devel/libinotify \
		x11/kde-applications/akonadi-contacts \
		x11/kde-applications/kimap \
		x11/kde-applications/mailcommon \
		x11/qt5/qtquickcontrols

RUN_DEPENDS =	devel/kf5/kitemviews \
		devel/kf5/ktexteditor \
		devel/kf5/solid  \
		x11/kde-applications/akonadi-contacts \
		x11/kde-applications/kdepim-runtime \
		x11/kde-applications/kimap \
		x11/kde-applications/mailcommon \
		x11/qt5/qtquickcontrols

LIB_DEPENDS =	devel/kf5/kauth \
		devel/kf5/kcmutils \
		devel/kf5/kcodecs \
		devel/kf5/kcompletion \
		devel/kf5/kconfig \
		devel/kf5/kconfigwidgets \
		devel/kf5/kcontacts \
		devel/kf5/kcoreaddons \
		devel/kf5/kcrash \
		devel/kf5/ki18n \
		devel/kf5/kio \
		devel/kf5/kitemmodels \
		devel/kf5/kjobwidgets \
		devel/kf5/knotifications \
		devel/kf5/knotifyconfig \
		devel/kf5/kparts \
		devel/kf5/kservice \
		devel/kf5/kwidgetsaddons \
		devel/kf5/kxmlgui \
		devel/kf5/sonnet \
		devel/kf5/syndication \
		security/gpgme,-qt \
		x11/grantlee-qt5 \
		x11/kde-applications/akonadi \
		x11/kde-applications/akonadi-mime \
		x11/kde-applications/grantleetheme \
		x11/kde-applications/kmime \
		x11/kde-applications/kmime \
		x11/kde-applications/kontactinterface \
		x11/kde-applications/kpimtextedit \
		x11/kde-applications/libkdepim \
		x11/kde-applications/messagelib \
		x11/kde-applications/pimcommon \
		x11/qt5/qtlocation \
		x11/qt5/qtwebchannel \
		x11/qt5/qtwebengine

TEST_IS_INTERACTIVE =	X11

.include <bsd.port.mk>
