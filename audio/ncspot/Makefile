# $OpenBSD: Makefile,v 1.16 2021/06/04 03:16:46 bket Exp $

FIX_EXTRACT_PERMISSIONS = Yes

COMMENT =		ncurses Spotify client

GH_ACCOUNT =		hrkfdn
GH_PROJECT =		ncspot
GH_TAGNAME =		v0.7.3

CATEGORIES =		audio

MAINTAINER =		Henrik Friedrichsen <henrik@diff.cc>

# BSD
PERMIT_PACKAGE =	Yes

WANTLIB +=		c c++abi crypto curses dbus-1 m portaudio pthread ssl

MODULES =		devel/cargo
BUILD_DEPENDS =		lang/rust>=1.30
LIB_DEPENDS=		audio/portaudio-svn \
			x11/dbus,-main

SEPARATE_BUILD =	Yes
NO_TEST =		Yes

CONFIGURE_STYLE =	cargo

DISTFILES +=		${DISTNAME}${EXTRACT_SUFX}
MODCARGO_CRATES +=	addr2line	0.15.1	# Apache-2.0/MIT
MODCARGO_CRATES +=	adler	1.0.2	# 0BSD OR MIT OR Apache-2.0
MODCARGO_CRATES +=	aes	0.6.0	# MIT OR Apache-2.0
MODCARGO_CRATES +=	aes-ctr	0.6.0	# MIT OR Apache-2.0
MODCARGO_CRATES +=	aes-soft	0.6.4	# MIT OR Apache-2.0
MODCARGO_CRATES +=	aesni	0.10.0	# MIT OR Apache-2.0
MODCARGO_CRATES +=	ahash	0.6.3	# MIT OR Apache-2.0
MODCARGO_CRATES +=	aho-corasick	0.7.18	# Unlicense/MIT
MODCARGO_CRATES +=	alsa	0.5.0	# Apache-2.0/MIT
MODCARGO_CRATES +=	alsa-sys	0.3.1	# MIT
MODCARGO_CRATES +=	ansi_term	0.11.0	# MIT
MODCARGO_CRATES +=	array-macro	1.0.5	# MIT/Apache-2.0
MODCARGO_CRATES +=	arrayref	0.3.6	# BSD-2-Clause
MODCARGO_CRATES +=	arrayvec	0.5.2	# MIT/Apache-2.0
MODCARGO_CRATES +=	async-io	1.4.1	# Apache-2.0 OR MIT
MODCARGO_CRATES +=	async-trait	0.1.50	# MIT OR Apache-2.0
MODCARGO_CRATES +=	atty	0.2.14	# MIT
MODCARGO_CRATES +=	autocfg	0.1.7	# Apache-2.0/MIT
MODCARGO_CRATES +=	autocfg	1.0.1	# Apache-2.0 OR MIT
MODCARGO_CRATES +=	backtrace	0.3.59	# MIT/Apache-2.0
MODCARGO_CRATES +=	base64	0.10.1	# MIT/Apache-2.0
MODCARGO_CRATES +=	base64	0.13.0	# MIT/Apache-2.0
MODCARGO_CRATES +=	bindgen	0.56.0	# BSD-3-Clause
MODCARGO_CRATES +=	bitflags	0.9.1	# MIT/Apache-2.0
MODCARGO_CRATES +=	bitflags	1.2.1	# MIT/Apache-2.0
MODCARGO_CRATES +=	blake2b_simd	0.5.11	# MIT
MODCARGO_CRATES +=	block	0.1.6	# MIT
MODCARGO_CRATES +=	block-buffer	0.9.0	# MIT OR Apache-2.0
MODCARGO_CRATES +=	bumpalo	3.7.0	# MIT/Apache-2.0
MODCARGO_CRATES +=	byteorder	1.4.3	# Unlicense OR MIT
MODCARGO_CRATES +=	bytes	0.4.12	# MIT
MODCARGO_CRATES +=	bytes	0.5.6	# MIT
MODCARGO_CRATES +=	bytes	1.0.1	# MIT
MODCARGO_CRATES +=	cache-padded	1.1.1	# Apache-2.0 OR MIT
MODCARGO_CRATES +=	cc	1.0.68	# MIT/Apache-2.0
MODCARGO_CRATES +=	cesu8	1.1.0	# Apache-2.0/MIT
MODCARGO_CRATES +=	cexpr	0.4.0	# Apache-2.0/MIT
MODCARGO_CRATES +=	cfg-if	0.1.10	# MIT/Apache-2.0
MODCARGO_CRATES +=	cfg-if	1.0.0	# MIT/Apache-2.0
MODCARGO_CRATES +=	chrono	0.4.19	# MIT/Apache-2.0
MODCARGO_CRATES +=	cipher	0.2.5	# MIT OR Apache-2.0
MODCARGO_CRATES +=	clang-sys	1.2.0	# Apache-2.0
MODCARGO_CRATES +=	clap	2.33.3	# MIT
MODCARGO_CRATES +=	clipboard	0.5.0	# MIT / Apache-2.0
MODCARGO_CRATES +=	clipboard-win	2.2.0	# MIT
MODCARGO_CRATES +=	cloudabi	0.0.3	# BSD-2-Clause
MODCARGO_CRATES +=	combine	4.5.2	# MIT
MODCARGO_CRATES +=	concurrent-queue	1.2.2	# Apache-2.0 OR MIT
MODCARGO_CRATES +=	constant_time_eq	0.1.5	# CC0-1.0
MODCARGO_CRATES +=	core-foundation	0.9.1	# MIT / Apache-2.0
MODCARGO_CRATES +=	core-foundation-sys	0.6.2	# MIT / Apache-2.0
MODCARGO_CRATES +=	core-foundation-sys	0.8.2	# MIT / Apache-2.0
MODCARGO_CRATES +=	coreaudio-rs	0.10.0	# MIT/Apache-2.0
MODCARGO_CRATES +=	coreaudio-sys	0.2.8	# MIT
MODCARGO_CRATES +=	cpal	0.13.3	# Apache-2.0
MODCARGO_CRATES +=	cpufeatures	0.1.4	# MIT OR Apache-2.0
MODCARGO_CRATES +=	crossbeam-channel	0.5.1	# MIT OR Apache-2.0
MODCARGO_CRATES +=	crossbeam-utils	0.8.5	# MIT OR Apache-2.0
MODCARGO_CRATES +=	crypto-mac	0.11.0	# MIT OR Apache-2.0
MODCARGO_CRATES +=	ctr	0.6.0	# MIT OR Apache-2.0
MODCARGO_CRATES +=	cursive	0.16.3	# MIT
MODCARGO_CRATES +=	cursive_core	0.2.2	# MIT
MODCARGO_CRATES +=	darling	0.9.0	# MIT
MODCARGO_CRATES +=	darling	0.10.2	# MIT
MODCARGO_CRATES +=	darling_core	0.9.0	# MIT
MODCARGO_CRATES +=	darling_core	0.10.2	# MIT
MODCARGO_CRATES +=	darling_macro	0.9.0	# MIT
MODCARGO_CRATES +=	darling_macro	0.10.2	# MIT
MODCARGO_CRATES +=	dbus	0.9.2	# Apache-2.0/MIT
MODCARGO_CRATES +=	dbus-tree	0.9.1	# Apache-2.0/MIT
MODCARGO_CRATES +=	derivative	2.2.0	# MIT/Apache-2.0
MODCARGO_CRATES +=	derive_builder	0.7.2	# MIT/Apache-2.0
MODCARGO_CRATES +=	derive_builder_core	0.5.0	# MIT/Apache-2.0
MODCARGO_CRATES +=	digest	0.9.0	# MIT OR Apache-2.0
MODCARGO_CRATES +=	dirs	1.0.5	# MIT OR Apache-2.0
MODCARGO_CRATES +=	dirs-next	1.0.2	# MIT OR Apache-2.0
MODCARGO_CRATES +=	dirs-sys-next	0.1.2	# MIT OR Apache-2.0
MODCARGO_CRATES +=	dotenv	0.13.0	# MIT
MODCARGO_CRATES +=	either	1.6.1	# MIT/Apache-2.0
MODCARGO_CRATES +=	encoding_rs	0.8.28	# Apache-2.0 OR MIT
MODCARGO_CRATES +=	enum-map	0.6.4	# MIT/Apache-2.0
MODCARGO_CRATES +=	enum-map-derive	0.4.6	# MIT/Apache-2.0
MODCARGO_CRATES +=	enumflags2	0.6.4	# MIT OR Apache-2.0
MODCARGO_CRATES +=	enumflags2_derive	0.6.4	# MIT OR Apache-2.0
MODCARGO_CRATES +=	env_logger	0.6.2	# MIT/Apache-2.0
MODCARGO_CRATES +=	failure	0.1.8	# MIT OR Apache-2.0
MODCARGO_CRATES +=	failure_derive	0.1.8	# MIT OR Apache-2.0
MODCARGO_CRATES +=	fastrand	1.4.1	# Apache-2.0 OR MIT
MODCARGO_CRATES +=	fern	0.6.0	# MIT
MODCARGO_CRATES +=	fnv	1.0.7	# Apache-2.0 / MIT
MODCARGO_CRATES +=	foreign-types	0.3.2	# MIT/Apache-2.0
MODCARGO_CRATES +=	foreign-types-shared	0.1.1	# MIT/Apache-2.0
MODCARGO_CRATES +=	form_urlencoded	1.0.1	# MIT/Apache-2.0
MODCARGO_CRATES +=	fuchsia-cprng	0.1.1	# LICENSE
MODCARGO_CRATES +=	fuchsia-zircon	0.3.3	# BSD-3-Clause
MODCARGO_CRATES +=	fuchsia-zircon-sys	0.3.3	# BSD-3-Clause
MODCARGO_CRATES +=	futures	0.1.31	# MIT/Apache-2.0
MODCARGO_CRATES +=	futures	0.3.15	# MIT OR Apache-2.0
MODCARGO_CRATES +=	futures-channel	0.3.15	# MIT OR Apache-2.0
MODCARGO_CRATES +=	futures-core	0.3.15	# MIT OR Apache-2.0
MODCARGO_CRATES +=	futures-executor	0.3.15	# MIT OR Apache-2.0
MODCARGO_CRATES +=	futures-io	0.3.15	# MIT OR Apache-2.0
MODCARGO_CRATES +=	futures-lite	1.11.3	# Apache-2.0 OR MIT
MODCARGO_CRATES +=	futures-macro	0.3.15	# MIT OR Apache-2.0
MODCARGO_CRATES +=	futures-sink	0.3.15	# MIT OR Apache-2.0
MODCARGO_CRATES +=	futures-task	0.3.15	# MIT OR Apache-2.0
MODCARGO_CRATES +=	futures-util	0.3.15	# MIT OR Apache-2.0
MODCARGO_CRATES +=	generic-array	0.14.4	# MIT
MODCARGO_CRATES +=	getrandom	0.1.16	# MIT OR Apache-2.0
MODCARGO_CRATES +=	getrandom	0.2.3	# MIT OR Apache-2.0
MODCARGO_CRATES +=	gimli	0.24.0	# Apache-2.0/MIT
MODCARGO_CRATES +=	glob	0.3.0	# MIT/Apache-2.0
MODCARGO_CRATES +=	h2	0.2.7	# MIT
MODCARGO_CRATES +=	h2	0.3.3	# MIT
MODCARGO_CRATES +=	half	1.7.1	# MIT/Apache-2.0
MODCARGO_CRATES +=	hashbrown	0.9.1	# Apache-2.0/MIT
MODCARGO_CRATES +=	headers	0.3.4	# MIT
MODCARGO_CRATES +=	headers-core	0.2.0	# MIT
MODCARGO_CRATES +=	heck	0.3.2	# MIT OR Apache-2.0
MODCARGO_CRATES +=	hermit-abi	0.1.18	# MIT/Apache-2.0
MODCARGO_CRATES +=	hmac	0.11.0	# MIT OR Apache-2.0
MODCARGO_CRATES +=	http	0.2.4	# MIT/Apache-2.0
MODCARGO_CRATES +=	http-body	0.3.1	# MIT
MODCARGO_CRATES +=	http-body	0.4.2	# MIT
MODCARGO_CRATES +=	httparse	1.4.1	# MIT/Apache-2.0
MODCARGO_CRATES +=	httpdate	0.3.2	# MIT/Apache-2.0
MODCARGO_CRATES +=	httpdate	1.0.1	# MIT/Apache-2.0
MODCARGO_CRATES +=	humantime	1.3.0	# MIT/Apache-2.0
MODCARGO_CRATES +=	hyper	0.13.10	# MIT
MODCARGO_CRATES +=	hyper	0.14.8	# MIT
MODCARGO_CRATES +=	hyper-proxy	0.9.1	# MIT
MODCARGO_CRATES +=	hyper-tls	0.4.3	# MIT/Apache-2.0
MODCARGO_CRATES +=	hyper-tls	0.5.0	# MIT/Apache-2.0
MODCARGO_CRATES +=	ident_case	1.0.1	# MIT/Apache-2.0
MODCARGO_CRATES +=	idna	0.1.5	# MIT/Apache-2.0
MODCARGO_CRATES +=	idna	0.2.3	# MIT/Apache-2.0
MODCARGO_CRATES +=	indexmap	1.6.2	# Apache-2.0/MIT
MODCARGO_CRATES +=	instant	0.1.9	# BSD-3-Clause
MODCARGO_CRATES +=	ioctl-rs	0.2.0	# MIT
MODCARGO_CRATES +=	iovec	0.1.4	# MIT/Apache-2.0
MODCARGO_CRATES +=	ipnet	2.3.0	# MIT OR Apache-2.0
MODCARGO_CRATES +=	itertools	0.8.2	# MIT/Apache-2.0
MODCARGO_CRATES +=	itoa	0.4.7	# MIT OR Apache-2.0
MODCARGO_CRATES +=	jni	0.18.0	# MIT/Apache-2.0
MODCARGO_CRATES +=	jni-sys	0.3.0	# MIT/Apache-2.0
MODCARGO_CRATES +=	jobserver	0.1.22	# MIT/Apache-2.0
MODCARGO_CRATES +=	js-sys	0.3.51	# MIT/Apache-2.0
MODCARGO_CRATES +=	kernel32-sys	0.2.2	# MIT
MODCARGO_CRATES +=	lazy_static	1.4.0	# MIT/Apache-2.0
MODCARGO_CRATES +=	lazycell	1.3.0	# MIT/Apache-2.0
MODCARGO_CRATES +=	lewton	0.10.2	# MIT OR Apache-2.0
MODCARGO_CRATES +=	libc	0.2.95	# MIT OR Apache-2.0
MODCARGO_CRATES +=	libdbus-sys	0.2.1	# Apache-2.0/MIT
MODCARGO_CRATES +=	libloading	0.7.0	# ISC
MODCARGO_CRATES +=	libpulse-binding	2.23.1	# MIT OR Apache-2.0
MODCARGO_CRATES +=	libpulse-simple-binding	2.23.0	# MIT OR Apache-2.0
MODCARGO_CRATES +=	libpulse-simple-sys	1.16.1	# MIT OR Apache-2.0
MODCARGO_CRATES +=	libpulse-sys	1.18.0	# MIT OR Apache-2.0
MODCARGO_CRATES +=	librespot-audio	0.2.0	# MIT
MODCARGO_CRATES +=	librespot-core	0.2.0	# MIT
MODCARGO_CRATES +=	librespot-metadata	0.2.0	# MIT
MODCARGO_CRATES +=	librespot-playback	0.2.0	# MIT
MODCARGO_CRATES +=	librespot-protocol	0.2.0	# MIT
MODCARGO_CRATES +=	lock_api	0.4.4	# Apache-2.0/MIT
MODCARGO_CRATES +=	log	0.4.14	# MIT OR Apache-2.0
MODCARGO_CRATES +=	mac-notification-sys	0.3.0	# MIT
MODCARGO_CRATES +=	mach	0.3.2	# BSD-2-Clause
MODCARGO_CRATES +=	malloc_buf	0.0.6	# MIT
MODCARGO_CRATES +=	maplit	1.0.2	# MIT/Apache-2.0
MODCARGO_CRATES +=	matches	0.1.8	# MIT
MODCARGO_CRATES +=	memchr	2.4.0	# Unlicense/MIT
MODCARGO_CRATES +=	mime	0.3.16	# MIT/Apache-2.0
MODCARGO_CRATES +=	mime_guess	2.0.3	# MIT
MODCARGO_CRATES +=	miniz_oxide	0.4.4	# MIT OR Zlib OR Apache-2.0
MODCARGO_CRATES +=	mio	0.6.23	# MIT
MODCARGO_CRATES +=	mio	0.7.11	# MIT
MODCARGO_CRATES +=	miow	0.2.2	# MIT/Apache-2.0
MODCARGO_CRATES +=	miow	0.3.7	# MIT/Apache-2.0
MODCARGO_CRATES +=	native-tls	0.2.7	# MIT/Apache-2.0
MODCARGO_CRATES +=	nb-connect	1.2.0	# Apache-2.0 OR MIT
MODCARGO_CRATES +=	ncurses	5.101.0	# MIT
MODCARGO_CRATES +=	ndk	0.3.0	# MIT OR Apache-2.0
MODCARGO_CRATES +=	ndk-glue	0.3.0	# MIT OR Apache-2.0
MODCARGO_CRATES +=	ndk-macro	0.2.0	# MIT OR Apache-2.0
MODCARGO_CRATES +=	ndk-sys	0.2.1	# MIT OR Apache-2.0
MODCARGO_CRATES +=	net2	0.2.37	# MIT/Apache-2.0
MODCARGO_CRATES +=	nix	0.17.0	# MIT
MODCARGO_CRATES +=	nix	0.20.0	# MIT
MODCARGO_CRATES +=	nom	5.1.2	# MIT
MODCARGO_CRATES +=	notify-rust	4.5.2	# MIT/Apache-2.0
MODCARGO_CRATES +=	ntapi	0.3.6	# Apache-2.0 OR MIT
MODCARGO_CRATES +=	num	0.3.1	# MIT OR Apache-2.0
MODCARGO_CRATES +=	num-bigint	0.4.0	# MIT OR Apache-2.0
MODCARGO_CRATES +=	num-complex	0.3.1	# MIT OR Apache-2.0
MODCARGO_CRATES +=	num-derive	0.3.3	# MIT OR Apache-2.0
MODCARGO_CRATES +=	num-integer	0.1.44	# MIT OR Apache-2.0
MODCARGO_CRATES +=	num-iter	0.1.42	# MIT OR Apache-2.0
MODCARGO_CRATES +=	num-rational	0.3.2	# MIT OR Apache-2.0
MODCARGO_CRATES +=	num-traits	0.2.14	# MIT OR Apache-2.0
MODCARGO_CRATES +=	num_cpus	1.13.0	# MIT/Apache-2.0
MODCARGO_CRATES +=	num_enum	0.5.1	# BSD-3-Clause
MODCARGO_CRATES +=	num_enum_derive	0.5.1	# BSD-3-Clause
MODCARGO_CRATES +=	numtoa	0.1.0	# MIT OR Apache-2.0
MODCARGO_CRATES +=	objc	0.2.7	# MIT
MODCARGO_CRATES +=	objc-foundation	0.1.1	# MIT
MODCARGO_CRATES +=	objc_id	0.1.1	# MIT
MODCARGO_CRATES +=	object	0.24.0	# Apache-2.0/MIT
MODCARGO_CRATES +=	oboe	0.4.2	# Apache-2.0
MODCARGO_CRATES +=	oboe-sys	0.4.2	# Apache-2.0
MODCARGO_CRATES +=	ogg	0.8.0	# BSD-3-Clause
MODCARGO_CRATES +=	once_cell	1.7.2	# MIT OR Apache-2.0
MODCARGO_CRATES +=	opaque-debug	0.3.0	# MIT OR Apache-2.0
MODCARGO_CRATES +=	openssl	0.10.34	# Apache-2.0
MODCARGO_CRATES +=	openssl-probe	0.1.4	# MIT/Apache-2.0
MODCARGO_CRATES +=	openssl-sys	0.9.63	# MIT
MODCARGO_CRATES +=	owning_ref	0.4.1	# MIT
MODCARGO_CRATES +=	pancurses	0.16.1	# MIT
MODCARGO_CRATES +=	parking	2.0.0	# Apache-2.0 OR MIT
MODCARGO_CRATES +=	parking_lot	0.11.1	# Apache-2.0/MIT
MODCARGO_CRATES +=	parking_lot_core	0.8.3	# Apache-2.0/MIT
MODCARGO_CRATES +=	pbkdf2	0.8.0	# MIT OR Apache-2.0
MODCARGO_CRATES +=	pdcurses-sys	0.7.1	# MIT
MODCARGO_CRATES +=	peeking_take_while	0.1.2	# Apache-2.0/MIT
MODCARGO_CRATES +=	percent-encoding	1.0.1	# MIT/Apache-2.0
MODCARGO_CRATES +=	percent-encoding	2.1.0	# MIT/Apache-2.0
MODCARGO_CRATES +=	pest	2.1.3	# MIT/Apache-2.0
MODCARGO_CRATES +=	pin-project	1.0.7	# Apache-2.0 OR MIT
MODCARGO_CRATES +=	pin-project-internal	1.0.7	# Apache-2.0 OR MIT
MODCARGO_CRATES +=	pin-project-lite	0.1.12	# Apache-2.0 OR MIT
MODCARGO_CRATES +=	pin-project-lite	0.2.6	# Apache-2.0 OR MIT
MODCARGO_CRATES +=	pin-utils	0.1.0	# MIT OR Apache-2.0
MODCARGO_CRATES +=	pkg-config	0.3.19	# MIT/Apache-2.0
MODCARGO_CRATES +=	platform-dirs	0.3.0	# MIT
MODCARGO_CRATES +=	polling	2.0.3	# Apache-2.0 OR MIT
MODCARGO_CRATES +=	portaudio-rs	0.3.2	# MIT
MODCARGO_CRATES +=	portaudio-sys	0.1.1	# MIT
MODCARGO_CRATES +=	ppv-lite86	0.2.10	# MIT/Apache-2.0
MODCARGO_CRATES +=	priority-queue	1.1.1	# LGPL-3.0 OR MPL-2.0
MODCARGO_CRATES +=	proc-macro-crate	0.1.5	# Apache-2.0/MIT
MODCARGO_CRATES +=	proc-macro-hack	0.5.19	# MIT OR Apache-2.0
MODCARGO_CRATES +=	proc-macro-nested	0.1.7	# MIT OR Apache-2.0
MODCARGO_CRATES +=	proc-macro2	0.4.30	# MIT/Apache-2.0
MODCARGO_CRATES +=	proc-macro2	1.0.27	# MIT OR Apache-2.0
MODCARGO_CRATES +=	protobuf	2.14.0	# MIT
MODCARGO_CRATES +=	protobuf-codegen	2.14.0	# MIT
MODCARGO_CRATES +=	protobuf-codegen-pure	2.14.0	# MIT
MODCARGO_CRATES +=	quick-error	1.2.3	# MIT/Apache-2.0
MODCARGO_CRATES +=	quote	0.3.15	# MIT/Apache-2.0
MODCARGO_CRATES +=	quote	0.6.13	# MIT OR Apache-2.0
MODCARGO_CRATES +=	quote	1.0.9	# MIT OR Apache-2.0
MODCARGO_CRATES +=	rand	0.6.5	# MIT/Apache-2.0
MODCARGO_CRATES +=	rand	0.8.3	# MIT OR Apache-2.0
MODCARGO_CRATES +=	rand_chacha	0.1.1	# MIT/Apache-2.0
MODCARGO_CRATES +=	rand_chacha	0.3.0	# MIT OR Apache-2.0
MODCARGO_CRATES +=	rand_core	0.3.1	# MIT/Apache-2.0
MODCARGO_CRATES +=	rand_core	0.4.2	# MIT/Apache-2.0
MODCARGO_CRATES +=	rand_core	0.6.2	# MIT OR Apache-2.0
MODCARGO_CRATES +=	rand_hc	0.1.0	# MIT/Apache-2.0
MODCARGO_CRATES +=	rand_hc	0.3.0	# MIT OR Apache-2.0
MODCARGO_CRATES +=	rand_isaac	0.1.1	# MIT/Apache-2.0
MODCARGO_CRATES +=	rand_jitter	0.1.4	# MIT OR Apache-2.0
MODCARGO_CRATES +=	rand_os	0.1.3	# MIT/Apache-2.0
MODCARGO_CRATES +=	rand_pcg	0.1.2	# MIT/Apache-2.0
MODCARGO_CRATES +=	rand_xorshift	0.1.1	# MIT/Apache-2.0
MODCARGO_CRATES +=	random	0.12.2	# Apache-2.0/MIT
MODCARGO_CRATES +=	rdrand	0.4.0	# ISC
MODCARGO_CRATES +=	redox_syscall	0.1.57	# MIT
MODCARGO_CRATES +=	redox_syscall	0.2.8	# MIT
MODCARGO_CRATES +=	redox_termios	0.1.2	# MIT
MODCARGO_CRATES +=	redox_users	0.3.5	# MIT
MODCARGO_CRATES +=	redox_users	0.4.0	# MIT
MODCARGO_CRATES +=	regex	1.5.4	# MIT OR Apache-2.0
MODCARGO_CRATES +=	regex-syntax	0.6.25	# MIT/Apache-2.0
MODCARGO_CRATES +=	remove_dir_all	0.5.3	# MIT/Apache-2.0
MODCARGO_CRATES +=	reqwest	0.10.10	# MIT/Apache-2.0
MODCARGO_CRATES +=	reqwest	0.11.3	# MIT/Apache-2.0
MODCARGO_CRATES +=	rodio	0.13.1	# MIT OR Apache-2.0
MODCARGO_CRATES +=	rspotify	0.10.0	# MIT
MODCARGO_CRATES +=	rust-argon2	0.8.3	# MIT/Apache-2.0
MODCARGO_CRATES +=	rustc-demangle	0.1.19	# MIT/Apache-2.0
MODCARGO_CRATES +=	rustc-hash	1.1.0	# Apache-2.0/MIT
MODCARGO_CRATES +=	rustc-serialize	0.3.24	# MIT/Apache-2.0
MODCARGO_CRATES +=	rustc_version	0.3.3	# MIT/Apache-2.0
MODCARGO_CRATES +=	ryu	1.0.5	# Apache-2.0 OR BSL-1.0
MODCARGO_CRATES +=	same-file	1.0.6	# Unlicense/MIT
MODCARGO_CRATES +=	schannel	0.1.19	# MIT
MODCARGO_CRATES +=	scoped-tls	1.0.0	# MIT/Apache-2.0
MODCARGO_CRATES +=	scopeguard	1.1.0	# MIT/Apache-2.0
MODCARGO_CRATES +=	security-framework	2.2.0	# MIT OR Apache-2.0
MODCARGO_CRATES +=	security-framework-sys	2.2.0	# MIT OR Apache-2.0
MODCARGO_CRATES +=	semver	0.11.0	# MIT/Apache-2.0
MODCARGO_CRATES +=	semver-parser	0.10.2	# MIT/Apache-2.0
MODCARGO_CRATES +=	serde	1.0.126	# MIT OR Apache-2.0
MODCARGO_CRATES +=	serde_cbor	0.11.1	# MIT/Apache-2.0
MODCARGO_CRATES +=	serde_derive	1.0.126	# MIT OR Apache-2.0
MODCARGO_CRATES +=	serde_json	1.0.64	# MIT OR Apache-2.0
MODCARGO_CRATES +=	serde_repr	0.1.7	# MIT OR Apache-2.0
MODCARGO_CRATES +=	serde_urlencoded	0.7.0	# MIT/Apache-2.0
MODCARGO_CRATES +=	sha-1	0.9.6	# MIT OR Apache-2.0
MODCARGO_CRATES +=	shannon	0.2.0	# MIT
MODCARGO_CRATES +=	shell-words	1.0.0	# MIT/Apache-2.0
MODCARGO_CRATES +=	shlex	0.1.1	# MIT/Apache-2.0
MODCARGO_CRATES +=	signal-hook	0.3.8	# Apache-2.0/MIT
MODCARGO_CRATES +=	signal-hook-registry	1.3.0	# Apache-2.0/MIT
MODCARGO_CRATES +=	slab	0.4.3	# MIT
MODCARGO_CRATES +=	smallvec	1.6.1	# MIT/Apache-2.0
MODCARGO_CRATES +=	socket2	0.3.19	# MIT/Apache-2.0
MODCARGO_CRATES +=	socket2	0.4.0	# MIT/Apache-2.0
MODCARGO_CRATES +=	stable_deref_trait	1.2.0	# MIT/Apache-2.0
MODCARGO_CRATES +=	stdweb	0.1.3	# MIT/Apache-2.0
MODCARGO_CRATES +=	strsim	0.7.0	# MIT
MODCARGO_CRATES +=	strsim	0.8.0	# MIT
MODCARGO_CRATES +=	strsim	0.9.3	# MIT
MODCARGO_CRATES +=	strum	0.8.0	# MIT
MODCARGO_CRATES +=	strum	0.20.0	# MIT
MODCARGO_CRATES +=	strum_macros	0.8.0	# MIT
MODCARGO_CRATES +=	strum_macros	0.20.1	# MIT
MODCARGO_CRATES +=	subtle	2.4.0	# BSD-3-Clause
MODCARGO_CRATES +=	syn	0.11.11	# MIT/Apache-2.0
MODCARGO_CRATES +=	syn	0.15.44	# MIT OR Apache-2.0
MODCARGO_CRATES +=	syn	1.0.72	# MIT OR Apache-2.0
MODCARGO_CRATES +=	synom	0.11.3	# MIT/Apache-2.0
MODCARGO_CRATES +=	synstructure	0.12.4	# MIT
MODCARGO_CRATES +=	tempfile	3.2.0	# MIT OR Apache-2.0
MODCARGO_CRATES +=	term_size	0.3.2	# MIT/Apache-2.0
MODCARGO_CRATES +=	termcolor	1.1.2	# Unlicense OR MIT
MODCARGO_CRATES +=	termion	1.5.6	# MIT
MODCARGO_CRATES +=	textwrap	0.11.0	# MIT
MODCARGO_CRATES +=	thiserror	1.0.25	# MIT OR Apache-2.0
MODCARGO_CRATES +=	thiserror-impl	1.0.25	# MIT OR Apache-2.0
MODCARGO_CRATES +=	time	0.1.43	# MIT/Apache-2.0
MODCARGO_CRATES +=	tinyvec	1.2.0	# Zlib OR Apache-2.0 OR MIT
MODCARGO_CRATES +=	tinyvec_macros	0.1.0	# MIT OR Apache-2.0 OR Zlib
MODCARGO_CRATES +=	tokio	0.2.25	# MIT
MODCARGO_CRATES +=	tokio	1.6.1	# MIT
MODCARGO_CRATES +=	tokio-macros	1.2.0	# MIT
MODCARGO_CRATES +=	tokio-native-tls	0.3.0	# MIT
MODCARGO_CRATES +=	tokio-socks	0.3.0	# MIT
MODCARGO_CRATES +=	tokio-stream	0.1.6	# MIT
MODCARGO_CRATES +=	tokio-tls	0.3.1	# MIT
MODCARGO_CRATES +=	tokio-util	0.3.1	# MIT
MODCARGO_CRATES +=	tokio-util	0.6.7	# MIT
MODCARGO_CRATES +=	toml	0.5.8	# MIT/Apache-2.0
MODCARGO_CRATES +=	tower-service	0.3.1	# MIT
MODCARGO_CRATES +=	tracing	0.1.26	# MIT
MODCARGO_CRATES +=	tracing-core	0.1.18	# MIT
MODCARGO_CRATES +=	tracing-futures	0.2.5	# MIT
MODCARGO_CRATES +=	try-lock	0.2.3	# MIT
MODCARGO_CRATES +=	typenum	1.13.0	# MIT OR Apache-2.0
MODCARGO_CRATES +=	ucd-trie	0.1.3	# MIT/Apache-2.0
MODCARGO_CRATES +=	unicase	2.6.0	# MIT/Apache-2.0
MODCARGO_CRATES +=	unicode-bidi	0.3.5	# MIT / Apache-2.0
MODCARGO_CRATES +=	unicode-normalization	0.1.18	# MIT/Apache-2.0
MODCARGO_CRATES +=	unicode-segmentation	1.7.1	# MIT/Apache-2.0
MODCARGO_CRATES +=	unicode-width	0.1.8	# MIT/Apache-2.0
MODCARGO_CRATES +=	unicode-xid	0.0.4	# MIT/Apache-2.0
MODCARGO_CRATES +=	unicode-xid	0.1.0	# MIT/Apache-2.0
MODCARGO_CRATES +=	unicode-xid	0.2.2	# MIT OR Apache-2.0
MODCARGO_CRATES +=	url	1.7.2	# MIT/Apache-2.0
MODCARGO_CRATES +=	url	2.2.2	# MIT/Apache-2.0
MODCARGO_CRATES +=	uuid	0.8.2	# Apache-2.0 OR MIT
MODCARGO_CRATES +=	vcpkg	0.2.13	# MIT/Apache-2.0
MODCARGO_CRATES +=	vec_map	0.8.2	# MIT/Apache-2.0
MODCARGO_CRATES +=	vergen	3.2.0	# MIT/Apache-2.0
MODCARGO_CRATES +=	version_check	0.9.3	# MIT/Apache-2.0
MODCARGO_CRATES +=	void	1.0.2	# MIT
MODCARGO_CRATES +=	waker-fn	1.1.0	# Apache-2.0 OR MIT
MODCARGO_CRATES +=	walkdir	2.3.2	# Unlicense/MIT
MODCARGO_CRATES +=	want	0.3.0	# MIT
MODCARGO_CRATES +=	wasi	0.9.0+wasi-snapshot-preview1	# Apache-2.0 WITH LLVM-exception OR Apache-2.0 OR MIT
MODCARGO_CRATES +=	wasi	0.10.2+wasi-snapshot-preview1	# Apache-2.0 WITH LLVM-exception OR Apache-2.0 OR MIT
MODCARGO_CRATES +=	wasm-bindgen	0.2.74	# MIT/Apache-2.0
MODCARGO_CRATES +=	wasm-bindgen-backend	0.2.74	# MIT/Apache-2.0
MODCARGO_CRATES +=	wasm-bindgen-futures	0.4.24	# MIT/Apache-2.0
MODCARGO_CRATES +=	wasm-bindgen-macro	0.2.74	# MIT/Apache-2.0
MODCARGO_CRATES +=	wasm-bindgen-macro-support	0.2.74	# MIT/Apache-2.0
MODCARGO_CRATES +=	wasm-bindgen-shared	0.2.74	# MIT/Apache-2.0
MODCARGO_CRATES +=	wasmer_enumset	1.0.1	# MIT/Apache-2.0
MODCARGO_CRATES +=	wasmer_enumset_derive	0.5.0	# MIT/Apache-2.0
MODCARGO_CRATES +=	web-sys	0.3.51	# MIT/Apache-2.0
MODCARGO_CRATES +=	webbrowser	0.5.5	# MIT OR Apache-2.0
MODCARGO_CRATES +=	wepoll-sys	3.0.1	# MPL-2.0
MODCARGO_CRATES +=	widestring	0.4.3	# MIT/Apache-2.0
MODCARGO_CRATES +=	winapi	0.2.8	# MIT
MODCARGO_CRATES +=	winapi	0.3.9	# MIT/Apache-2.0
MODCARGO_CRATES +=	winapi-build	0.1.1	# MIT
MODCARGO_CRATES +=	winapi-i686-pc-windows-gnu	0.4.0	# MIT/Apache-2.0
MODCARGO_CRATES +=	winapi-util	0.1.5	# Unlicense/MIT
MODCARGO_CRATES +=	winapi-x86_64-pc-windows-gnu	0.4.0	# MIT/Apache-2.0
MODCARGO_CRATES +=	winreg	0.5.1	# MIT
MODCARGO_CRATES +=	winreg	0.7.0	# MIT
MODCARGO_CRATES +=	winrt	0.4.0	# MIT OR Apache-2.0
MODCARGO_CRATES +=	winrt-notification	0.2.4	# MIT
MODCARGO_CRATES +=	ws2_32-sys	0.2.1	# MIT
MODCARGO_CRATES +=	x11-clipboard	0.3.3	# MIT
MODCARGO_CRATES +=	xcb	0.8.2	# MIT
MODCARGO_CRATES +=	xi-unicode	0.3.0	# Apache-2.0
MODCARGO_CRATES +=	xml-rs	0.6.1	# MIT
MODCARGO_CRATES +=	zbus	1.9.1	# MIT
MODCARGO_CRATES +=	zbus_macros	1.9.1	# MIT
MODCARGO_CRATES +=	zerocopy	0.3.0	# BSD-3-Clause
MODCARGO_CRATES +=	zerocopy-derive	0.2.0	# BSD-3-Clause
MODCARGO_CRATES +=	zvariant	2.6.0	# MIT
MODCARGO_CRATES +=	zvariant_derive	2.6.0	# MIT

.include <bsd.port.mk>
