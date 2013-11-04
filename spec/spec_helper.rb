ENV['RACK_ENV'] = "test"

require 'rubygems'
require 'bundler'
Bundler.setup :default, :development, :test

require 'simplecov'
require 'simplecov-rcov'

SimpleCov.start do
  add_filter '/vendor/' # exclude matching files
  #add_group "Test Helpers", "lib/gds_api/test_helpers"
  formatter SimpleCov::Formatter::RcovFormatter
end

require 'rspec'

RSpec.configure do |config|
  config.order = "random"
end