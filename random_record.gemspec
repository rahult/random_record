# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "random_record/version"

Gem::Specification.new do |s|
  s.name        = "random_record"
  s.version     = RandomRecord::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Rahul Trikha"]
  s.email       = ["rahul.trikha@gmail.com"]
  s.homepage    = ""
  s.summary     = %q{Random record for ActiveRecord Models}
  s.description = %q{Returns a random record for Ruby Models using ActiveRecord}
  s.homepage    = "https://github.com/rahult/random_record"

  s.add_dependency('activerecord', '>= 3.0.0')

  s.rubyforge_project = "random_record"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
end
