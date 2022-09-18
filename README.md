# GirFFI-Cairo

GirFFI-based Ruby bindings for Cairo

## Features/Issues

This gem allows use of Cairo from your
[GirFFI](https://rubygems.org/gems/gir_ffi)-based Gtk+ application. It is only
a thin layer on top of the C library.

Please note that this library is in the very early stages of development. Please
file bugs for any functionality that is not yet implemented.

## Usage

```ruby
require 'gir_ffi-cairo'

dst = Cairo::ImageSurface.new(:argb32, 400, 300)
ctx = Cairo::Context.new(dst)
```

## Install

```bash
gem install gir_ffi-cairo
```

## Requirements

GirFFI-Cairo needs the [GirFFI](https://rubygems.org/gems/gir_ffi) gem and
supports the same platforms.

In addition, it needs introspection data for the cairo library.
On Debian and Ubuntu, you can get this by installing `gir1.2-freedesktop`.

GirFFI-Cairo has not been tested on Mac OS X or Microsoft Windows. YMMV. Pull
requests to support these platforms are welcome.

## Contributors

The following people have contributed to GirFFI-Cairo:

* Natsuki Yagi
* Matijs van Zuijlen

## License

Copyright &copy; 2012&ndash;2022 [Matijs van Zuijlen](http://www.matijs.net/)

GirFFI-Cairo is free software, distributed under the terms of the GNU Lesser
General Public License, version 2.1 or later. See the file COPYING.LIB for more
information.
