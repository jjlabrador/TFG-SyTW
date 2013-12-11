class Question < Sinatra::Base
  helpers Sinatra::MyHelpers
  
  # set folder for templates to ../views, but make the path absolute
  set :views, File.expand_path('../../views', __FILE__)
  
  get '/new_question' do
    title "Nueva pregunta"
    haml :'Questions/new_question'
  end
  
  post '/new_question' do
    file = params[:file_html]
    content = ""
    File.open("#{file[:tempfile].to_path}", 'r') do |f|
      while linea = f.gets
        content << linea
      end
    end
    haml :'Questions/view_question', :locals => {:question => content}
  end
  
end