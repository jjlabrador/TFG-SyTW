#encoding: utf-8
require 'spec/rspec_helper'

describe "Questions routes" do
  
  describe "New question" do
    it "should show the new question's form" do
      visit '/question/new_question'
      attach_file('file_html', 'lib/fixtures/test_upload_file.html')
      click_on('Añadir')
    end
    
    it "should upload the html file of questions" do
      Dir['lib/uploads/*'].should include('lib/uploads/test_upload_file.html')
    end
  end
  
end