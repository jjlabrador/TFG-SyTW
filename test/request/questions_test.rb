#encoding: utf-8
require 'rspec'
require 'rack/test'

require_relative '../../tfg'
require MyApp.settings.root + '/controllers/questions_controller'
require MyApp.settings.root + '/test/rspec_helper'

describe "Questions routes" do
  
  describe "New question" do
    it "should show the new question's form" do
      get '/new_question'
      last_response.status.should be(200)
    end
    
    it "should upload the html file of questions" do
      post '/new_question', 'file_html' => Rack::Test::UploadedFile.new('fixtures/test_upload_file.html', 'text/plain')
      Dir['uploads/*'].should include('uploads/test_upload_file.html')
    end
  end
  
end