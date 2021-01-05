# Sinatra CMS Application Assessment

## Getting Started

``` ruby 
gem install corneal

corneal new App-Name

cd App-Name

bundle install

shotgun (starts the server)
```
Quite literally can create an application using Sinatra in less than five minutes; however, when running the application for the first time I get the 'Big Decimal Error'.

```html
Boot Error

Something went wrong while loading config.ru

NoMethodError: undefined method `new' for BigDecimal:Class
```

## Solving for the Big Decimal & Older Gems

These are the gems I'm having issues with:
```ruby
gem 'activerecord', '~> 4.2', '>= 4.2.6', :require => 'active_record'
gem 'sqlite3', '~> 1.3.6'
```
I'll make changes to the gem file and see what happens:

```ruby
gem 'activerecord', '~> 6.0', '>= 6.0.3.2', :require => 'active_record'
gem 'sqlite3'
```
Then I may need to try:

```ruby
bundle update activerecord
bundle update sqlite3

# NOTE:  This seemed to update the gems and their dependencies
```

```ruby
removed this from the config.ru
# if ActiveRecord::Migrator.needs_migration?
#   raise 'Migrations are pending. Run `rake db:migrate` to resolve the issue.'
# end
```

[Add screenshot after pushing to github]

********************
## Add Repo to Github with Flatiron Requirements



********************
### Resources
[https://dev.to/ethanmgustafson/creating-an-api-using-sinatra-2a48]