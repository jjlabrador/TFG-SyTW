#encoding: utf-8
require 'rspec'
require 'rack/test'

require_relative '../../tfg'
require MyApp.settings.root + '/helpers/myHelpers'
require MyApp.settings.root + '/test/rspec_helper'

describe "My helpers" do
  
  describe "title" do
    it "should include page title" do
      title("foo").match /foo/
    end
    
    it "should include base title" do
      title("foo").match /^MyApp \|/
    end
    
    it "should not include bar for home page" do
      !title().match /\|/
    end
  end
  
end