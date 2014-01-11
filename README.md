# GirFFI-Cairo

GirFFI-based bindings for Cairo

## Features/Issues

This gem allows use of Cairo from your GirFFI-based Gtk+ application. It
is only a thin layer on top of the C library.

Please note that this library is in the very early stages of
development. Please file bugs for any functionality that is not yet
implemented.

## Usage

    require 'gir_ffi-cairo'

    dst = Cairo::ImageSurface.new(:argb32, 400, 300)
    ctx = Cairo::Context.new(dst)

## Install

    gem install gir_ffi-cairo

## License

Copyright &copy; 2012&ndash;2013, [Matijs van Zuijlen](http://www.matijs.net/)

GirFFI-Cairo is free software, distributed under the terms of the GNU
Lesser General Public License, version 2.1 or later. See the file
COPYING.LIB for more information.
