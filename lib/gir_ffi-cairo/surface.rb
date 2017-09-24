Cairo.load_class :Surface

module Cairo
  # Overrides for CairoSurface (cairo_surface_t)
  class Surface
    def flush
      Lib.cairo_surface_flush(self)
    end

    def finish
      Lib.cairo_surface_finish(self)
    end
  end
end

Cairo::Lib.module_eval do
  attach_function :cairo_surface_flush, [:pointer], :void
  attach_function :cairo_surface_finish, [:pointer], :void
end
