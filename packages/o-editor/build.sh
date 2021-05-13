TERMUX_PKG_HOMEPAGE=https://github.com/xyproto/o
TERMUX_PKG_DESCRIPTION="Small, fast and limited text editor"
TERMUX_PKG_LICENSE="MIT"
TERMUX_PKG_MAINTAINER="Alexander F. Rødseth <xyproto@archlinux.org>"
TERMUX_PKG_VERSION=2.40.1
TERMUX_PKG_SRCURL=https://github.com/xyproto/o/archive/$TERMUX_PKG_VERSION.tar.gz
TERMUX_PKG_SHA256=bb4700d53e52a2b478a5f5e1fc32b9ca989729a1d4aeca3fc3315371d6e34eea
TERMUX_PKG_BREAKS="o"
TERMUX_PKG_REPLACES="o"

termux_step_make() {
	termux_setup_golang

	export GOPATH=$TERMUX_PKG_BUILDDIR
	mkdir -p "$GOPATH"/src/github.com/xyproto
	ln -sf "$TERMUX_PKG_SRCDIR" "$GOPATH"/src/github.com/xyproto/o

	cd "$GOPATH"/src/github.com/xyproto/o
	go build
}

termux_step_make_install() {
	install -Dm700 -t "$TERMUX_PKG_MASSAGEDIR/$TERMUX_PREFIX"/bin \
		"$GOPATH"/src/github.com/xyproto/o/o
	install -Dm600 -t "$TERMUX_PKG_MASSAGEDIR/$TERMUX_PREFIX"/share/man/man1 \
		"$TERMUX_PKG_SRCDIR"/o.1
}
