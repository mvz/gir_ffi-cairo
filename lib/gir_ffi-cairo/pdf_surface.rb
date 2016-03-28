module Cairo
  class PDFSurface < Surface
    def self.create filename, width, height
      ptr = Lib.cairo_pdf_surface_create filename, width, height
      surface = self.wrap ptr

      if block_given?
        yield surface
        surface.finish
      end

      surface
    end
  end

  module Lib
    attach_function :cairo_pdf_surface_create, [:string, :double, :double], :pointer
  end
end
