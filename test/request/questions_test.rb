#encoding: utf-8
require 'test/unit'
require 'rack/test'

ENV['RACK_ENV'] = 'test'

require_relative '../../tfg'
require MyApp.settings.root + '/controllers/questions_controller'
require MyApp.settings.root + '/helpers/myHelpers'
require MyApp.settings.root + '/test/helpers/application_helper'
require MyApp.settings.root + '/test/rack_helper'

class MyAppTest < Test::Unit::TestCase
  
  def app
    Rack::Builder.new do
      run MyApp.new
    end.to_app
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