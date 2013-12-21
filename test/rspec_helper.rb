require 'rspec'
require 'rack/test'
require 'capybara/rspec'

ENV['RACK_ENV'] = 'test'

RSpec.configure do |conf|
  conf.include Capybara::DSL
  conf.include Rack::Test::Methods
  conf.include Sinatra::MyHelpers
  conf.color_enabled = true
  conf.order = "random"
end

def app
  #MyApp
  Capybara.app = MyApp
end