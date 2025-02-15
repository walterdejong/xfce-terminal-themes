#! /bin/bash

DESTDIR="$HOME/.local/share/xfce4/terminal/colorschemes"

if [[ "$1" != "-f" ]]
then
	echo "warning: NOTHING DONE"
	echo "use ${0##*/} -f to really install into $DESTDIR/"
	exit 1
fi

if [[ ! -f walter-vga.theme ]]
then
	echo "error: files not found"
	echo "please chdir to source directory"
	exit 1
fi

set -x

install -m 0644 -D walter-amber.theme "$DESTDIR/walter-amber.theme"
install -m 0644 -D walter-vga.theme "$DESTDIR/walter-vga.theme"
install -m 0644 -D walter-light.theme "$DESTDIR/walter-light.theme"

# EOB
