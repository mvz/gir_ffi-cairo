module Cairo
  load_class :Context

  class Context
    def self.create target
      ptr = Lib.cairo_create target
      self.wrap ptr
    end

    def arc xc, yc, radius, angle1, angle2
      Lib.cairo_arc self, xc, yc, radius, angle1, angle2
    end

    def fill
      Lib.cairo_fill self
    end

    def get_target
      ptr = Lib.cairo_get_target self
      Surface.wrap ptr
    end

    def set_source_rgba red, green, blue, alpha
      Lib.cairo_set_source_rgba self, red, green, blue, alpha
    end
  end

  module Lib
    attach_function :cairo_create, [:pointer], :pointer
    attach_function :cairo_get_target, [:pointer], :pointer

    attach_function :cairo_arc,
      [:pointer, :double, :double, :double, :double, :double], :void
    attach_function :cairo_fill, [:pointer], :void
    attach_function :cairo_set_source_rgba,
      [:pointer, :double, :double, :double, :double], :void
  end
end
