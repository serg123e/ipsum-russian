# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "ipsum-russian/version"

Gem::Specification.new do |s|
  s.name        = "ipsum-russian"
  s.version     = Ipsum::Russian::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Clive Crous", "Sergey Evstegneev"]
  s.email       = ["clive@crous.co.za"]
  s.homepage    = "http://github.com/serg123e/ipsum-russian"
  s.summary     = %q{Russian language dictionary for Ipsum}
  s.description = %q{Russian language dictionary for Ipsum}

  s.add_dependency "ipsum-core", ">= 2.0.0"

  s.add_development_dependency "bundler", ">= 1.0.0"
  s.add_development_dependency "rake", ">= 0.8.7"
  s.add_development_dependency 'rspec', '~> 3.5'

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
end
