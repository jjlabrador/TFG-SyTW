#encoding: utf-8
require_relative '../../tfg'
require MyApp.settings.root + '/controllers/questions_controller'
require MyApp.settings.root + '/test/rspec_helper'

describe "Questions routes" do
  
  describe "New question" do
    it "should show the new question's form" do
      visit '/new_question'
      attach_file('file_html', 'fixtures/test_upload_file.html')
      click_on('Añadir')
    end
    
    it "should upload the html file of questions" do
      post 'new_question'
      Dir['uploads/*'].should include('uploads/test_upload_file.html')
    end
  end
  
end