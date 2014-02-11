# This module contains my own helpers
module MyHelpers
  
  # Set the page title
  #
  # @param value [String] the title of the page
  # @return [String] the formatted title of the page
  def title(value = nil)
    @title = value if value
    @title ? "MyApp | #{@title}" : "MyApp"
  end
  
end