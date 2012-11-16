require File.expand_path('../test_helper.rb', File.dirname(__FILE__))

describe Cairo::Context do
  it "can retrieve the surface it was created for" do
    dst = Cairo::ImageSurface.create(:argb32, 400, 300)
    ctx = Cairo::Context.create(dst)
    ctx.get_target.to_ptr.must_equal dst.to_ptr
  end
end
