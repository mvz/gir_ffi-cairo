# frozen_string_literal: true

module Cairo
  # Surface subclass for (bitmap) images.
  class ImageSurface < Surface
    def self.create(format, width, height)
      ptr = Lib.cairo_image_surface_create format, width, height
      wrap ptr
    end
  end
end

Cairo::Lib.attach_function(:cairo_image_surface_create,
                           [Cairo::Format, :int, :int], :pointer)
