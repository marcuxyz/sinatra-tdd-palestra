require 'rspec'
require 'capybara/rspec'
require 'rack/test'

require_relative '../app'

module RSpecMixin
  include Rack::Test::Methods
end

Capybara.app = Application

