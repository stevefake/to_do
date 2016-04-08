require_relative "test_helper"

class ServerTest < Minitest::Test
  include Rack::Test::Methods

  def setup
  end

  def teardown
  end

  def app
    Server
  end

  def test_has_a_root_route
    response = get "/"
    assert response.ok?
  end

  def test_can_get_list_name
    response = get "/list/:name"
    assert response.ok?, "not a 200 range response"
    assert_equal true, response.body.include?("name")
  end

  def test_can_create_new_todo_item
    request = post "/list/:list_name?description=exercise"
    # binding.pry
    assert_equal true, request.body.include?("exercise")
  end

  def test_new_todo_item_creation_returns_the_id
    skip
  end

  def test_can_get_list_of_incompletes_of_given_name
    skip
    response = get "/list/steve"
    assert_equal "exercise", response.body.incompletes
  end



end
