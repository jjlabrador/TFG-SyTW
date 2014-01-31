module MyHelpers
  
  def title(value = nil)
    @title = value if value
    @title ? "MyApp | #{@title}" : "MyApp"
  end
  
end