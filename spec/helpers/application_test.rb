#encoding: utf-8
require 'spec/rspec_helper'

describe "My helpers" do
  
  describe "page title" do
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
