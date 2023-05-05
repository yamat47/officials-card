# frozen_string_literal: true

source "https://rubygems.org"
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby "3.1.2"

gem "rails"
gem "sprockets-rails"
gem "pg"
gem "puma"
gem "tailwindcss-rails"
gem "tzinfo-data", platforms: %i[ mingw mswin x64_mingw jruby ]
gem "slim"
gem "thinreports"
gem "matrix"
gem "rack-cors"

group :development do
  gem "rubocop", require: false
  gem "rubocop-rails", require: false
  gem "rubocop-rails_config", require: false
end

group :development, :test do
  gem "debug", platforms: %i[ mri mingw x64_mingw ]
end
