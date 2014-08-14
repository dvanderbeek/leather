$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "leather/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "leather"
  s.version     = Leather::VERSION
  s.authors     = ["David Van Der Beek"]
  s.email       = ["david@flyoverworks.com"]
  s.homepage    = "github.com/dvanderbeek/leather"
  s.summary     = "TODO: Summary of Leather."
  s.description = "TODO: Description of Leather."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 4.1.4"

  s.add_development_dependency "jquery-rails"
  s.add_development_dependency "sqlite3"
  s.add_development_dependency "coffee-rails"
  s.add_development_dependency "sass-rails", "~> 4.0.3"
end
