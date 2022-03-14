# frozen_string_literal: true

require_relative "lib/gir_ffi-cairo/version"

Gem::Specification.new do |spec|
  spec.name = "gir_ffi-cairo"
  spec.version = GirFFICairo::VERSION
  spec.authors = ["Matijs van Zuijlen"]
  spec.email = ["matijs@matijs.net"]

  spec.summary = "GirFFI-based bindings for Cairo"
  spec.description = <<~DESC
    Bindings for Cairo generated by GirFFI, with overrides.
  DESC
  spec.homepage = "http://www.github.com/mvz/gir_ffi-cairo"
  spec.license = "LGPL-2.1"
  spec.required_ruby_version = ">= 2.6.0"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/mvz/gir_ffi-cairo"
  spec.metadata["changelog_uri"] = "https://github.com/mvz/gir_ffi-cairo/blob/master/Changelog.md"
  spec.metadata["rubygems_mfa_required"] = "true"

  spec.files = File.read("Manifest.txt").split
  spec.rdoc_options = ["--main", "README.md"]
  spec.extra_rdoc_files = ["Changelog.md", "README.md"]
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency "gir_ffi", "~> 0.15.2"

  spec.add_development_dependency "minitest", "~> 5.12"
  spec.add_development_dependency "rake", "~> 13.0"
  spec.add_development_dependency "rake-manifest", "~> 0.2.0"
  spec.add_development_dependency "rubocop", "~> 1.25"
  spec.add_development_dependency "rubocop-minitest", "~> 0.18.0"
  spec.add_development_dependency "rubocop-packaging", "~> 0.5.0"
  spec.add_development_dependency "rubocop-performance", "~> 1.13"
  spec.add_development_dependency "simplecov", "~> 0.21.0"
end
