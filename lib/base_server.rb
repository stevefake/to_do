class Base < Sinatra::Base
  # Allows use of <input name="_method" value="delete"> in modular style siantra
  use Rack::MethodOverride

  # Enable Sessions
  enable :sessions

  # Serve the public folder to the world
  set :static, true
  set :public_folder, File.expand_path(File.join(root,"..", "public"))
  # When using erb helper what folder should we look in
  set :views, File.expand_path(File.join(root, "..", "app", "views"))
end
