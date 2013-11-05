#encoding: utf-8
ENV['RACK_ENV'] = 'test'

require_relative '../../tfg'
require File.dirname(MyApp.settings.root) + "/app/test/helpers/rackHelpers"

class MyAppTest < Test::Unit::TestCase
  
  def app
    MyApp
  end
  
  def test_it_include_nueva_pregunta
    get '/new_question'
    assert last_response.body.include?("<h1>Nueva pregunta</h1>")
  end
  
end