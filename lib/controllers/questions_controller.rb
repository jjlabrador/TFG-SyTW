# Question class
class Question < MyApp
  
  # @method get_new_question
  # @overload get '/new_question'
  # Render the new question page
  get '/new_question' do
    title("Nueva pregunta")
    haml :'Questions/new_question'
  end
  
  # @method post_new_question
  # @overload post '/new_question'
  # Upload and read the file and render his content
  post '/new_question' do
    file = params[:file_html]
    
    File.open("lib/uploads/#{file[:filename]}", 'w') do |f|
      f.write(file[:tempfile].read)
      f.close
    end
    
    content = ""
    File.open("lib/uploads/#{file[:filename]}", 'r') do |f|
      while line = f.gets
        content << line
      end
      f.close
    end
    
    #`ruql lib/uploads/#{file[:filename]} HtmlForm`
    haml :'Questions/view_question', :locals => {:question => content}
  end
  
end