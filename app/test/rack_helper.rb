ENV['RACK_ENV'] ||= 'test'

require 'sinatra/base'
require 'test/unit'
require 'rack/test'

module Sinatra
  module RackHelpers
    
    class Test::Unit::TestCase
      include Rack::Test::Methods
      include Sinatra::MyHelpers
    end
    
  end
  
  helpers RackHelpers
end