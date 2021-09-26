# frozen_string_literal: true

require "simplecov"
SimpleCov.start do
  add_group "Main", "lib"
  add_group "Tests", "test"
  enable_coverage :branch unless RUBY_ENGINE == "jruby"
end

require "minitest/autorun"

require "gir_ffi-cairo"
