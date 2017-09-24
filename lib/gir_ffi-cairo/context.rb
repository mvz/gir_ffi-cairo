module Cairo
  load_class :Context

  class Context
    def self.create(target)
      ptr = Lib.cairo_create target
      wrap ptr
    end

    def move_to(x, y)
      Lib.cairo_move_to self, x, y
    end

    def line_to(x, y)
      Lib.cairo_line_to self, x, y
    end

    def close_path
      Lib.cairo_close_path self
    end

    def rectangle(x, y, width, height)
      Lib.cairo_rectangle self, x, y, width, height
    end

    def arc(xc, yc, radius, angle1, angle2)
      Lib.cairo_arc self, xc, yc, radius, angle1, angle2
    end

    def fill
      Lib.cairo_fill self
    end

    def stroke
      Lib.cairo_stroke self
    end

    def get_target
      ptr = Lib.cairo_get_target self
      Surface.wrap ptr
    end

    def set_source_rgba(red, green, blue, alpha)
      Lib.cairo_set_source_rgba self, red, green, blue, alpha
    end

    def save
      Lib.cairo_save self
    end

    def restore
      Lib.cairo_restore self
    end

    def show_page
      Lib.cairo_show_page self
    end
  end

  module Lib
    attach_function :cairo_create, [:pointer], :pointer
    attach_function :cairo_get_target, [:pointer], :pointer

    attach_function :cairo_move_to, [:pointer, :double, :double], :void
    attach_function :cairo_line_to, [:pointer, :double, :double], :void
    attach_function :cairo_arc,
      [:pointer, :double, :double, :double, :double, :double], :void
    attach_function :cairo_close_path, [:pointer], :void
    attach_function :cairo_rectangle, [:pointer, :double, :double, :double, :double], :void

    attach_function :cairo_fill, [:pointer], :void
    attach_function :cairo_stroke, [:pointer], :void

    attach_function :cairo_set_source_rgba,
      [:pointer, :double, :double, :double, :double], :void

    attach_function :cairo_save, [:pointer], :void
    attach_function :cairo_restore, [:pointer], :void
    attach_function :cairo_show_page, [:pointer], :void
  end
end
