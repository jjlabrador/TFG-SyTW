# Static pages class
class StaticPages < MyApp
  
  # @method get_about
  # @overload get '/about'
  # Render the about page
  get '/about' do
    title("About")
    haml :'Static_Pages/about'
  end
  
  # @method get_home
  # @overload get '/'
  # Render the home page
  get '/' do
    haml :'Static_Pages/home'
  end
  
  get '/error' do
    foo
  end
  
end