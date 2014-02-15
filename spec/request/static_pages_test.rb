#encoding: utf-8
require 'spec/rspec_helper'

describe "Static pages routes" do
  
  it "should render the not_found page for an unknown path" do
    visit '/unknown_path'
    page.status_code.should be(404)
  end
  
  it "should render the home page" do
    visit '/'
    page.status_code.should be(200)
  end
  
  it "should render the about page" do
    visit '/about'
    page.status_code.should be(200)
  end
  
  it "should render the internal server error page" do
    visit '/error'
    page.status_code.should be(500)
  end
  
end