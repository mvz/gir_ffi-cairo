# frozen_string_literal: true

require File.expand_path('../test_helper.rb', File.dirname(__FILE__))

describe Cairo::Context do
  it 'can retrieve the surface it was created for' do
    dst = Cairo::ImageSurface.create(:argb32, 400, 300)
    ctx = Cairo::Context.create(dst)
    _(ctx.get_target.to_ptr).must_equal dst.to_ptr
    pass
  end

  it 'can create and fill a path' do
    dst = Cairo::ImageSurface.create(:argb32, 400, 300)
    ctx = Cairo::Context.create(dst)
    ctx.arc(300, 200, 100, 0, 2 * Math::PI)
    ctx.set_source_rgba(1, 1, 0, 0.5)
    ctx.fill
    pass
  end

  describe 'PDF' do
    before { @path = 'integration-test.pdf' }
    after  { File.delete(@path) if File.exist? @path }

    it 'can create pdf' do
      Cairo::PDFSurface.create(@path, 400, 300) do |surface|
        ctx = Cairo::Context.create(surface)
        ctx.arc(300, 200, 100, 0, 2 * Math::PI)
        ctx.set_source_rgba(1, 1, 0, 0.5)
        ctx.fill
        ctx.show_page
      end
      pass
    end
  end
end
