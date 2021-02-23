source 'http://rubygems.org'
ruby '2.7.2'
gem 'sinatra'
gem 'activerecord', '~> 5.2', '>= 5.2.0', :require => 'active_record'
gem 'sinatra-activerecord', :require => 'sinatra/activerecord'
gem 'rake'
gem 'passenger'
gem 'sinatra-flash'
gem 'require_all'
gem 'thin'
gem 'shotgun'
gem 'pony'
gem 'bcrypt'
gem "tux"
gem "mysql2"
gem 'sinatra-advanced-routes', :require => 'sinatra/advanced_routes'




group :production, :development do
	gem 'pry'
end


group :test do
  gem 'rspec'
  gem 'capybara'
  gem 'rack-test'
  gem 'database_cleaner', git: 'https://github.com/bmabey/database_cleaner.git'
  gem 'sqlite3'
end
