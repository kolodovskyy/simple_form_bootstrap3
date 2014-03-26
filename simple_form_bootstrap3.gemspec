$:.push File.expand_path("../lib", __FILE__)

require "simple_form_bootstrap3/version"

Gem::Specification.new do |s|
  s.name        = "simple_form_bootstrap3"
  s.version     = SimpleFormBootstrap3::VERSION
  s.authors     = ["Yuriy Kolodovskyy"]
  s.email       = ["kolodovskyy@ukrindex.com"]
  s.homepage    = "https://github.com/kolodovskyy/simple_form_boostrap3"
  s.summary     = "Rails form generator with simple_form and bootstrap3."
  s.description = "Rails form generator with simple_form and bootstrap3."
  s.license     = "MIT"

  s.files       = Dir[ "{config,lib,vendor}/**/*", "LICENSE.txt", "Rakefile", "README.md" ]

  s.add_dependency "bootstrap-sass", "~> 3.1.1.0"
  s.add_dependency "simple_form", "~> 3.0.1"
end
