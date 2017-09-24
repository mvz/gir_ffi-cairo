module Cairo
  class ImageSurface < Surface
    def self.create format, width, height
      ptr = Lib.cairo_image_surface_create format, width, height
      wrap ptr
    end
  end

  module Lib
    attach_function :cairo_image_surface_create, [Cairo::Format, :int, :int], :pointer
  end
end

