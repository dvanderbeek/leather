$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "leather/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "leather"
  s.version     = Leather::VERSION
  s.authors     = ["David Van Der Beek"]
  s.email       = ["david@flyoverworks.com"]
  s.homepage    = "http://www.github.com/dvanderbeek/leather"
  s.summary     = "Bootstrap tools - UI Kit, Devise Views, and Component Partials"
  s.description = "Bootstrap tools - UI Kit, Devise Views, and Component Partials"
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", ">= 4.0"

  s.add_runtime_dependency "devise"
  s.add_runtime_dependency "haml-rails"
  s.add_runtime_dependency "high_voltage"
  s.add_runtime_dependency "bootstrap-sass", "~> 3.3.3"

  s.add_development_dependency "jquery-rails"
  s.add_development_dependency "sqlite3"
  s.add_development_dependency "coffee-rails"
  s.add_development_dependency "sass-rails", "~> 4.0.3"
end
