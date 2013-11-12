#encoding: utf-8
ENV['RACK_ENV'] = 'test'

require_relative '../../tfg'
require File.dirname(MyApp.settings.root) + "/app/test/rack_helper"

class MyAppTest < Test::Unit::TestCase
  
  def app
    MyApp
  end
  
  def test_it_include_nueva_pregunta
    get '/new_question'
    assert last_response.body.include?("<h1>Nueva pregunta</h1>")
  end
  
  def test_it_path_not_found
    get '/unknown_path'
    assert_equal last_response.status, 404
  end
  
  def test_it_include_not_found
    get '/views/partials/errors/404/not_found'
    assert last_response.body.include?("Error 404: esta página no existe.")
  end
  
end