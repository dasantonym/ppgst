#!/bin/sh
case `uname` in Darwin*) CONF="--prefix=/usr/local" ;;
  *) CONF="--prefix=/usr" ;; esac

set -x
aclocal -I autoconfig/m4
case `uname` in Darwin*) glibtoolize --force --copy ;;
  *) libtoolize --force --copy ;; esac
autoheader
automake --add-missing --copy
autoconf

echo CONFIGURING with $CONF
./configure $CONF
