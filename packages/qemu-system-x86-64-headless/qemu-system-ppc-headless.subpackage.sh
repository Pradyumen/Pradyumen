TERMUX_SUBPKG_DESCRIPTION="A generic and open source machine emulator and virtualizer (headless)"
TERMUX_SUBPKG_DEPENDS="attr, glib, libbz2, libc++, libcap-ng, libcurl, libgcrypt, libiconv, libjpeg-turbo, liblzo, libnfs, libpixman, libpng, libssh, ncurses, qemu-common, resolv-conf, zlib, libspice-server, libusbredir"
TERMUX_SUBPKG_DEPEND_ON_PARENT=no

TERMUX_SUBPKG_INCLUDE="
bin/qemu-system-ppc
share/man/man1/qemu-system-ppc.1.gz
"
