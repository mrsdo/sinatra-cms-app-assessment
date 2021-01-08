# frozen_string_literal: true

require_relative "lib/listing_manager/version"

Gem::Specification.new do |spec|
  spec.name          = "listing_manager"
  spec.version       = ListingManager::VERSION
  spec.authors       = ["mrsdo"]
  spec.email         = ["me@martidolce.com"]

  spec.summary       = "Sinatra application for Real Estate Listings"
  spec.description   = "Tracks Agents, Listings and Company"
  spec.homepage      = "https://github.com/Marti-Dolce-Flatiron-School-Projects/FIS_p2_listing_manager"
  spec.license       = "MIT"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.3.0")

  spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"

  spec.metadata["homepage_uri"] = spec.homepage

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{\A(?:test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency 'bundler'
  spec.add_development_dependency 'pry'
  spec.add_development_dependency 'rake'
  spec.add_development_dependency 'activerecord', '~> 5.2.3'
  spec.add_development_dependency 'bcrypt'
  spec.add_development_dependency 'require_all'
  spec.add_development_dependency 'shotgun'
  spec.add_development_dependency 'sinatra'
  spec.add_development_dependency 'sinatra-activerecord'
  spec.add_development_dependency 'pg'
  spec.add_development_dependency 'thin'
  spec.add_development_dependency 'tux'


    spec.add_development_dependency 'capybara'
    spec.add_development_dependency 'database_cleaner'
    spec.add_development_dependency 'rack-test'
    spec.add_development_dependency 'rspec'

  # For more information and examples about making a new gem, checkout our
  # guide at: https://bundler.io/guides/creating_gem.html
end
