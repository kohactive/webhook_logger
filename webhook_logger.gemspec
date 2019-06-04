$:.push File.expand_path("lib", __dir__)

# Maintain your gem's version:
require "webhook_logger/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |spec|
  spec.name        = "webhook_logger"
  spec.version     = WebhookLogger::VERSION
  spec.authors     = ["John Koht"]
  spec.email       = ["john@kohactive.com"]
  spec.homepage    = "https://github.com/kohactive/webhook_logger"
  spec.summary     = "Simple webhook logger for rails apps"
  spec.description = "Simple webhook logger for rails apps"
  spec.license     = "MIT"

  spec.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  spec.add_dependency "rails", "~> 5"

  spec.add_development_dependency "sqlite3"
  spec.add_development_dependency "rspec-rails"
  spec.add_development_dependency "factory_bot_rails"
  spec.add_development_dependency "database_cleaner"
  spec.add_development_dependency "shoulda-matchers"
end
