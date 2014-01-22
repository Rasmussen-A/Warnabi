source 'https://rubygems.org'
ruby '1.8.7'

gem 'rails', '3.2.3'

group :development, :test do
  gem 'sqlite3'
  gem 'spork-rails', :github => 'sporkrb/spork-rails'
  gem 'factory_girl', '2.6.4'
  gem 'factory_girl_rails', '1.7.0'
  gem 'rubyzip', '0.9.9'
  gem "rspec-rails", "~> 2.14.1"
  gem 'selenium-webdriver'
  gem 'guard-rspec'
  gem 'guard-spork'
end

group :production do
  gem 'pg'
  gem 'rails_12factor'
end

gem 'json'
gem 'jquery-rails'
gem 'rails-i18n', '~> 3.0.0'
gem "haml-rails", "~> 0.3.5"

# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails',   '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'
  gem 'uglifier', '>= 1.0.3'
  gem 'bootstrap-sass', '~> 3.0.3.0'
end
