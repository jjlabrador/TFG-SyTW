require 'sinatra/base'

class MyApp < Sinatra::Base
  
  configure do
    enable :logging           # o set :logging, true
    set :dump_errors, true
    set :raise_errors, false  #?
    set :show_exceptions, true  
    set :root, File.dirname(__FILE__)
  end
  
  get '/' do
    "Hello world!"
  end
  
  # start the server if ruby file executed directly
  run! if app_file == $0
end