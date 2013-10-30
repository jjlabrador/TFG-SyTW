require 'sinatra/base'

module Sinatra
  module MyHelpers
    def title(value = nil)
      @title = value if value
      @title ? "#{@title}" : "Hello World!"
    end
  end
  
  helpers MyHelpers
end