require File.expand_path('../test_helper.rb', File.dirname(__FILE__))

describe Cairo::PDFSurface do
  it "is a subclass of Cairo::Surface" do
    Cairo::PDFSurface.superclass.must_equal Cairo::Surface
  end

  describe ".create" do
    before { @path = 'test.pdf' }
    after  { File.delete(@path) if File.exist? @path }

    it "creates a new Cairo::PDFSurface" do
      obj = Cairo::PDFSurface.create(@path, 300, 200)
      obj.must_be_instance_of Cairo::PDFSurface
    end

    it "creates a new Cairo::PDFSurface with block" do
      called = nil
      Cairo::PDFSurface.create(@path, 300, 200) {|surface|
        surface.must_be_instance_of Cairo::PDFSurface
        called = true
      }
      refute_nil called
      assert File.exist?(@path)
    end

  end
end

