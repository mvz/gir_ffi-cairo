module Cairo
  load_class :Context

  class Context
    def self.create target
      ptr = Lib.cairo_create target
      self.wrap ptr
    end

    def get_target
      ptr = Lib.cairo_get_target self
      Surface.wrap ptr
    end
  end

  module Lib
    attach_function :cairo_create, [:pointer], :pointer
    attach_function :cairo_get_target, [:pointer], :pointer
  end
end
