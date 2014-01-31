class StaticPages < MyApp
  
  get '/about' do
    title "About"
    haml :'Static_Pages/about'
  end
  
  get '/' do
    haml :'Static_Pages/home'
  end
  
end