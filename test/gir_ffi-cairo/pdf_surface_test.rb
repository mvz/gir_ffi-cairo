# frozen_string_literal: true

require File.expand_path("../test_helper.rb", File.dirname(__FILE__))

describe Cairo::PDFSurface do
  it "is a subclass of Cairo::Surface" do
    _(Cairo::PDFSurface.superclass).must_equal Cairo::Surface
  end

  describe ".create" do
    before { @path = "test.pdf" }
    after  { FileUtils.rm(@path, force: true) }

    it "creates a new Cairo::PDFSurface" do
      obj = Cairo::PDFSurface.create(@path, 300, 200)
      _(obj).must_be_instance_of Cairo::PDFSurface
    end

    it "creates a new Cairo::PDFSurface with block" do
      called = nil
      Cairo::PDFSurface.create(@path, 300, 200) do |surface|
        _(surface).must_be_instance_of Cairo::PDFSurface
        called = true
      end

      refute_nil called
      assert_path_exists(@path)
    end
  end
end
