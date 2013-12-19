require 'rspec'
require 'rack/test'

ENV['RACK_ENV'] = 'test'

RSpec.configure do |conf|
  conf.include Rack::Test::Methods
  conf.include Sinatra::MyHelpers
  conf.color_enabled = true
  conf.order = "random"
  
  def app
    MyApp
  end
end