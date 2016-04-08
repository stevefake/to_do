class ListController < ::Base
  get "/lists/:name" do
    erb :lists
  end

  post "/lists/:name" do
    payload = params["list"]
    ::List.create(payload)
    redirect to("/lists/#{params['name']}")
  end
end
