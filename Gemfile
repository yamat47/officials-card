# frozen_string_literal: true

source "https://rubygems.org"
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby "3.1.0"

gem "rails"
gem "pg"
gem "puma"
gem "sass-rails"
gem "rack-cors"
gem "slim"
gem "thinreports"
gem "webpacker"
gem "tzinfo-data", platforms: [:mingw, :mswin, :x64_mingw, :jruby]
gem "matrix"
gem "importmap-rails"
gem "cssbundling-rails"

group :development, :test do
  gem "byebug", platforms: [:mri, :mingw, :x64_mingw]
end

group :development do
  gem "foreman", require: false
  gem "listen", "~> 3.3"
  gem "rubocop", require: false
  gem "rubocop-rails", require: false
  gem "rubocop-rails_config", require: false
end

