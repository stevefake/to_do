module Controller
  class Homepage < ::Base
    get "/" do
      erb :homepage
    end
  end
end
