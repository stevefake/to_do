ENV["RACK_ENV"] ||= "development"

require "rubygems"
require "bundler/setup"
require "sinatra/base"
require "json"
require "pry"

# Project requires
require "./lib/base_server"
require "./config/database"
Dir.glob("./app/**/*.rb").each { |file| require file }

Tilt.register Tilt::ERBTemplate, "html.erb"

class Server < Base
  # Each controller should be listed below
  use ::Controller::Homepage
end

Server.run! if $PROGRAM_NAME == __FILE__
