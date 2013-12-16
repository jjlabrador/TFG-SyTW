require 'rspec'
require 'rack/test'

ENV['RACK_ENV'] = 'test'

RSpec.configure do |conf|
  conf.include Rack::Test::Methods
  conf.include Sinatra::MyHelpers
  
  def app
    MyApp
  end
end