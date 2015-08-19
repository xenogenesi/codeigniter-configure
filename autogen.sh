#!/bin/sh
test -d config || mkdir config
test -d m4 || mkdir m4
autoreconf --force --install -I config -I m4

