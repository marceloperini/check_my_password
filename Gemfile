source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.7.2'

gem 'bootsnap', '>= 1.4.4', require: false
gem 'jsonapi-serializer'
gem 'pg', '~> 1.1'
gem 'puma', '~> 5.0'
gem 'rails', '~> 6.1.1'
gem 'react_on_rails', '~> 12.0.4'
gem 'sass-rails', '>= 6'
gem 'slim', '~> 4.0.1'
gem 'webpacker', '~> 5.0'

group :development, :test do
  gem 'guard-rspec'
  gem 'pry-byebug'
  gem 'reek'
  gem 'rspec-benchmark'
  gem 'rubocop'
  gem 'rubocop-rspec'
end

group :development do
  gem 'listen', '~> 3.3'
  gem 'rack-mini-profiler', '~> 2.0'
  gem 'spring'
  gem 'web-console', '>= 4.1.0'
end

group :test do
  gem 'capybara', '>= 3.26'
  gem 'rspec-rails'
  gem 'selenium-webdriver'
  gem 'webdrivers'
end
