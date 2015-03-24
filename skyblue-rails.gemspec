# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'skyblue/rails/version'

Gem::Specification.new do |spec|
  spec.name          = "skyblue-rails"
  spec.version       = Skyblue::Rails::VERSION
  spec.authors       = ["Robert Mosolgo"]
  spec.email         = ["rdmosolgo@gmail.com"]
  spec.summary       = %q{Use the Skyblue style framework with Rails}
  spec.description   = %q{Skyblue is a super-minimal, Bootstrap-like style framework written in Sass. `skyblue-rails` adds Skyblue to the Rails asset pipeline.}
  spec.homepage      = "http://github.com/rmosolgo/skyblue-rails"
  spec.license       = "MIT"

  spec.files         = Dir["{assets,lib}/**/*", "LICENSE.txt", "readme.md"]
  spec.test_files    = Dir["spec/**/*"]
  spec.require_paths = ["lib"]

  spec.add_dependency "rails", ">= 3.1"
  spec.add_dependency "sass-rails"

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "sqlite3"
  spec.add_development_dependency "minitest-reporters", "~> 1.0"
  spec.add_development_dependency "rake"
end
