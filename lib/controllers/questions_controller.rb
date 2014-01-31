class Question < MyApp
  
  get '/new_question' do
    title "Nueva pregunta"
    haml :'Questions/new_question'
  end
  
  post '/new_question' do
    file = params[:file_html]
    
    # Upload the file
    File.open("lib/uploads/#{file[:filename]}", 'w') do |f|
      f.write(file[:tempfile].read)
      f.close
    end
    
    # Read and render the content of the file
    content = ""
    File.open("lib/uploads/#{file[:filename]}", 'r') do |f|
      while line = f.gets
        content << line
      end
      f.close
    end
    
    haml :'Questions/view_question', :locals => {:question => content}
  end
  
end