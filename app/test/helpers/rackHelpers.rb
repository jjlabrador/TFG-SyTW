require 'sinatra/base'
require 'test/unit'
require 'rack/test'

module Sinatra
  module RackHelpers
    
    class Test::Unit::TestCase
      include Rack::Test::Methods
    end
    
  end
  
  helpers RackHelpers
end