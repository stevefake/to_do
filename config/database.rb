require "yaml"
require "active_record"
db_config = YAML.load(File.read(File.expand_path("config/database.yml")))
ActiveRecord::Base.establish_connection(db_config[ENV["RACK_ENV"]])
