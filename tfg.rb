#encoding: utf-8
Dir.glob('./{helpers,controllers}/*.rb').each {|file| require file }

class MyApp < Sinatra::Base
  helpers Sinatra::MyHelpers
  use Question
  
  configure do
    enable :logging, :dump_errors, :show_exceptions
    set :raise_errors, false
    set :root, File.dirname(__FILE__)
    enable :protection
    enable :absolute_redirects      # para cumplir con la RFC 2616 (HTTP 1.1)
  end
  
  # usado para mostrar página de error 404
  not_found do
    title "Página no encontrada"
    haml :'partials/errors/404/not_found'
  end
  
  # arranca el server si se ejecuta el fichero ruby directamente
  run! if app_file == $0
end
