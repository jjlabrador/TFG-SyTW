#encoding: utf-8
require 'sinatra/base'

# Base class
class MyApp < Sinatra::Base
  Dir[File.join(File.dirname(__FILE__), '{helpers,controllers}/*.rb')].each { |file| require file }
  helpers MyHelpers
  
  configure do
    enable :logging, :dump_errors, :show_exceptions
    set :raise_errors, false
    set :root, File.dirname(__FILE__)
    enable :protection
    enable :absolute_redirects
  end
  
  # @method get_unknowPath
  # @overload get '/unknow_path'
  # 404 error. Render the not found page
  not_found do
    title("Página no encontrada")
    haml :'partials/errors/404/not_found'
  end
  
  # Start the server if the ruby file is executed
  run! if app_file == $0
end
