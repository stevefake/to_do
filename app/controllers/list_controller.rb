module Controller
  class List < ::Base
    
    get "/list/:name" do
      erb :list
    end

    post "/list/:list_name?description=#{@todo_item}" do
      erb :list
      new_item = Item.create(@todo_item)
      return new_item.id
    end
  end
end
