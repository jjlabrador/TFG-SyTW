#encoding: utf-8
require 'spec/rspec_helper'

describe "Static pages routes" do
  it "should render the not_found page for an unknown path" do
    visit '/unknown_path'
    page.status_code.should be(404)
  end
end