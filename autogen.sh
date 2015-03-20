#!/bin/sh
CONF="--prefix=/usr"

set -x
aclocal -I autoconfig/m4
case `uname` in Darwin*) glibtoolize --force --copy ;;
  *) libtoolize --force --copy ;; esac
autoheader
automake --add-missing --copy
autoconf

echo CONFIGURING with $CONF
./configure $CONF
