# GirFFI-Cairo

GirFFI-based bindings for Cairo

## Usage

    require 'gir_ffi-cairo'

    dst = Cairo::ImageSurface.new(:argb32, 400, 300)
    ctx = Cairo::Context.new(dst)

## Install

    gem install gir_ffi-cairo

## License

Copyright 2012, [Matijs van Zuijlen](http://www.matijs.net/)

GirFFI-Cairo is free software, distributed under the terms of the GNU Lesser
General Public License, version 2.1 or later. See the file COPYING.LIB for
more information.
