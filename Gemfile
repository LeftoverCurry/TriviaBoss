# frozen_string_literal: true

source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

# Rails dependencies and support
ruby '2.6.3' # A Nice Programming Language.  Very cozy.
gem 'jbuilder', '~> 2.7' # DSL for declaring JSON objects.
gem 'rails', '~> 6.0.3', '>= 6.0.3.3' # This here monolith.
gem 'tzinfo-data', platforms: %i[mingw mswin x64_mingw jruby] # Timezone support for Windows users.

# Database and DB support
gem 'faker' # Randomized data for seeds and tests.
gem 'pg', '>= 0.18', '< 2.0' # Postgres DB.

# Servers
gem 'puma', '~> 4.1' # Use Puma as the app server

# Front End Compilers and Magical Artifacts
gem 'bootsnap', '>= 1.4.2', require: false # Speeds up loading by packaging imports and requires.
gem 'turbolinks', '~> 5' # Makes server-side rendered SPA's kinda possible.
gem 'webpacker', '~> 5.0' # Rails wrapper for Webpack.

# Front End Frameworks, Libraries, and Visualization Tools
gem 'sass-rails', '>= 6' # Use SCSS for stylesheets

# Debugging
gem 'pry' # Beautiful debugging.

group :development, :test do
  # Testing and support
  gem 'factory_bot_rails' # Allows reusable factories to be created to test models.
  gem 'rspec-rails' # Testing framework. Replaces MiniTest.
end

group :development do
  # Debugging
  gem 'web-console', '>= 3.3.0' # Access an interactive console on exception pages or by calling 'console.'

  # Documentation
  gem 'annotate'

  # Server and Module reloading for developers
  gem 'listen', '~> 3.2' # Event watching for Spring.
  gem 'spring' # Live reloading of rails server
  gem 'spring-watcher-listen', '~> 2.0.0' # Interface for Spring and Listen.
end

group :test do
  # Testing libraries
  gem 'shoulda-matchers' # Provides additional testing DSL to RSpec
  # System Testing
  gem 'capybara', '>= 2.15' # Framework for system tests
  gem 'selenium-webdriver' # System test driver
  gem 'webdrivers' # Allows system testing in browsers
end
