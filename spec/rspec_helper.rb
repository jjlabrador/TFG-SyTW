require 'rspec'
require 'capybara/rspec'

Dir[File.join(File.dirname(__FILE__), '..', 'lib', '{.,helpers,controllers}/*.rb')].each { |file| require file }

ENV['RACK_ENV'] = 'test'

RSpec.configure do |conf|
  conf.include Capybara::DSL
  conf.include Sinatra::MyHelpers
  conf.color_enabled = true
  conf.formatter = :documentation   # default: progress
  conf.order = "random"
end

Capybara.app = MyApp