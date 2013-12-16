#encoding: utf-8
require 'rspec'
require 'rack/test'

require_relative '../../tfg'
require MyApp.settings.root + '/controllers/questions_controller'
require MyApp.settings.root + '/test/rspec_helper'

describe "Questions routes" do
  
  describe "New question" do
    it "get route" do
      get '/new_question'
      last_response.status.should be(200)
    end
  end
  
end