class ListController < ::Base
  get "/list/:name" do
    erb :list
  end

  post "/list/:name" do
    payload = params["list"]
    ::List.create(payload)
    redirect to("/list/#{params['name']}")
  end
end
