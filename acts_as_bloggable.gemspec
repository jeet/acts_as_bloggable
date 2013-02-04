$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "acts_as_bloggable/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "acts_as_bloggable"
  s.version     = ActsAsBloggable::VERSION
  s.authors     = ["TODO: Your name"]
  s.email       = ["TODO: Your email"]
  s.homepage    = "TODO"
  s.summary     = "TODO: Summary of ActsAsBloggable."
  s.description = "TODO: Description of ActsAsBloggable."

  s.files = Dir["{app,config,db,lib}/**/*"] + ["MIT-LICENSE", "Rakefile", "README.rdoc"]

  s.add_dependency "rails", "~> 3.2.11"
  # s.add_dependency "jquery-rails"

  s.add_development_dependency "sqlite3"
end
