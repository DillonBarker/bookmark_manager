require 'capybara/rspec'
require 'simplecov'
require 'simplecov-console'
require_relative '../app'
SimpleCov.formatter = SimpleCov::Formatter::MultiFormatter.new([
  SimpleCov::Formatter::Console,
  
])
SimpleCov.start
Capybara.app = BookmarkManager
RSpec.configure do |config|

end
