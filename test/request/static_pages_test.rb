#encoding: utf-8
require 'rspec'
require 'rack/test'

require_relative '../../tfg'
require MyApp.settings.root + '/test/rspec_helper'

describe "Static pages routes" do
  it "Unknown path" do
    get '/unknown_path'
    last_response.status.should be(404)
  end
end