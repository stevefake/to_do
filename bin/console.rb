ENV["RACK_ENV"] ||= "development"

require "rubygems"
require "bundler/setup"
require "sinatra/base"
require "json"
require "pry"

# Project requires
require "./lib/base_server"
Dir.glob("./app/**/*.rb").each { |file| require file }

binding.pry
