#encoding: utf-8
ENV['RACK_ENV'] = 'test'

require_relative '../../tfg'
require File.dirname(MyApp.settings.root) + "/app/test/rack_helper"

class MyAppTest < Test::Unit::TestCase
  
  def app
    MyApp
  end
  
  def test_it_should_include_page_title
    assert_match /foo/, title("foo")
  end
  
  def test_it_should_include_base_title
    assert_match /^MyApp/, title("foo")
  end
  
  def test_it_should_not_include_bar_for_home_page
    assert_no_match /\|/, title() 
  end
end