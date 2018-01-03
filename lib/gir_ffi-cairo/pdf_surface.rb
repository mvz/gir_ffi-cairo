# frozen_string_literal: true

module Cairo
  # Surface subclass for PDFs.
  class PDFSurface < Surface
    def self.create(filename, width, height)
      ptr = Lib.cairo_pdf_surface_create filename, width, height
      surface = wrap ptr

      if block_given?
        yield surface
        surface.finish
      end

      surface
    end

    def set_size(width, height)
      Lib.cairo_pdf_surface_set_size(self, width, height)
    end
  end
end

Cairo::Lib.module_eval do
  attach_function :cairo_pdf_surface_create, [:string, :double, :double], :pointer
  attach_function :cairo_pdf_surface_set_size, [:pointer, :double, :double], :void
end
