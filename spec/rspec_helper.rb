require 'rspec'
require 'capybara/rspec'
require File.join(File.dirname(__FILE__), '..', 'lib', 'tfg.rb')

ENV['RACK_ENV'] = 'test'

RSpec.configure do |conf|
  conf.include Capybara::DSL
  conf.include MyHelpers
  conf.color_enabled = true
  conf.formatter = :documentation   # default: progress
  conf.order = "random"
end

Capybara.app = eval "Rack::Builder.new {( " + File.read(File.dirname(__FILE__) + '/../lib/config.ru') + "\n )}"