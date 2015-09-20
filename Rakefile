require 'bundler/gem_helper'
require 'rake/testtask'

Bundler::GemHelper.install_tasks

namespace :test do
  Rake::TestTask.new(:unit) do |t|
    t.libs = ['lib']
    t.test_files = FileList['test/gir_ffi-cairo/*_test.rb']
    t.warning = true
  end

  Rake::TestTask.new(:integration) do |t|
    t.libs = ['lib']
    t.test_files = FileList['test/integration/*_test.rb']
    t.warning = true
  end

  task :all => [:unit, :integration]
end

task :test => 'test:all'

task :default => 'test'
