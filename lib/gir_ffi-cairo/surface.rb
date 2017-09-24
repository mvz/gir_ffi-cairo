module Cairo
  load_class :Surface

  class Surface
    # TODO: Add overrides
    def flush
      Lib.cairo_surface_flush(self)
    end

    def finish
      Lib.cairo_surface_finish(self)
    end
  end

  module Lib
    # TODO: Attach functions
    attach_function :cairo_surface_flush, [:pointer], :void
    attach_function :cairo_surface_finish, [:pointer], :void
  end
end
