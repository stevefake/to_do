class ItemController < ::Base
  get "/items/:name" do
    erb :items
  end

  post "/items/:name" do
    payload = params["item"]
    ::Item.create(payload)
    redirect to("/items/#{params['name']}")
  end
end
