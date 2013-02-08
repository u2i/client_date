require 'rake'
require 'rake/testtask'

require 'bundler'

Bundler.setup
Bundler.require

desc 'Default: run unit tests.'
task :default => :test

desc 'Test the client_date plugin.'
Rake::TestTask.new(:test) do |t|
  t.libs << 'lib'
  t.pattern = 'test/**/*_test.rb'
  t.verbose = true
end

