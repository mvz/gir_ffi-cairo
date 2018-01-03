# frozen_string_literal: true

require File.expand_path('../test_helper.rb', File.dirname(__FILE__))

describe Cairo::ImageSurface do
  it 'is a subclass of Cairo::Surface' do
    Cairo::ImageSurface.superclass.must_equal Cairo::Surface
  end

  describe '.create' do
    it 'creates a new Cairo::ImageSurface' do
      obj = Cairo::ImageSurface.create(:argb32, 300, 200)
      obj.must_be_instance_of Cairo::ImageSurface
    end
  end
end
