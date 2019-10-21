# frozen_string_literal: true

require File.expand_path("../test_helper.rb", File.dirname(__FILE__))

describe Cairo::Context do
  describe ".create" do
    it "creates a new Cairo::Context" do
      obj = Cairo::Context.create(nil)
      _(obj).must_be_instance_of Cairo::Context
    end
  end

  let(:instance) { Cairo::Context.create(nil) }

  describe "#get_target" do
    it "returns the context's target" do
      _(instance.get_target).must_be_instance_of Cairo::Surface
    end
  end
end
