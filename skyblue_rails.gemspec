$:.push File.expand_path("../lib", __FILE__)
require 'skyblue/rails/version'

Gem::Specification.new do |spec|
  spec.name          = "skyblue_rails"
  spec.version       = Skyblue::Rails::VERSION
  spec.authors       = ["Robert Mosolgo"]
  spec.email         = ["rdmosolgo@gmail.com"]
  spec.summary       = %q{Use the SkyBlue style framework with Rails}
  spec.description   = %q{SkyBlue is a Bootstrap-like style framework written in Sass. `skyblue_rails` adds SkyBlue to the Rails asset pipeline.}
  spec.homepage      = "http://github.com/rmosolgo/skyblue_rails"
  spec.license       = "MIT"

  spec.files         = Dir["{assets,lib}/**/*", "LICENSE.txt", "readme.md"]
  spec.test_files    = Dir["spec/**/*"]

  spec.add_dependency "rails", ">= 3.1"
  spec.add_dependency "sass-rails"

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "sqlite3"
  spec.add_development_dependency "minitest-reporters", "~> 1.0"
  spec.add_development_dependency "rake"
end
