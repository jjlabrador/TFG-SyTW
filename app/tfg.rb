#encoding: utf-8
require 'sinatra/base'

class MyApp < Sinatra::Base
  
  configure do
    enable :logging, :dump_errors, :show_exceptions
    set :raise_errors, false
    set :root, File.dirname(__FILE__)
    enable :protection
    enable :absolute_redirects                        # para cumplir con la RFC 2616 (HTTP 1.1)
  end
  
  get '/' do
    "Hello world!"
  end
  
  # start the server if ruby file executed directly
  run! if app_file == $0
end