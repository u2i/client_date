lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |s|
  s.name = "client_date"
  s.version = "0.4.1"
  s.date = "2013-02-10"
  s.summary = "Uses client-side Javascript to format a datetime instead of the Ruby on Rails server"
  s.email = "piotr.bzymek@u2i.com"
  s.homepage = "http://github.com/u2illc/client_date"
  s.description = "Uses client-side Javascript to format a datetime instead of the Ruby on Rails server"
  s.has_rdoc = false
  s.authors = ["Piotr Bzymek", "Ryan Lowe"]
  s.files = ["README", "CHANGELOG", "MIT-LICENSE","Rakefile", "client_date.gemspec",
    "lib/client_date.rb",
    "app/assets/javascripts/client_date.js",
    "app/assets/javascripts/strftime/strftime.js",
    "app/assets/javascripts/strftime/strftime-min.js",
    "test/client_date_test.rb","test/test_helper.rb",
    "lib/client_date/helper.rb",
    "lib/client_date/strftime.rb",
    "lib/client_date/rails/engine.rb"]
  s.test_files = ["test/client_date_test.rb","test/test_helper.rb"]
  s.rdoc_options = ["--main", "README"]
  s.extra_rdoc_files = ["README","CHANGELOG"]
  s.add_dependency "activesupport"

end
