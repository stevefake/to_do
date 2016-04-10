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
    response = get "/lists/steve"
    assert response.ok?, "not a 200 range response"
    assert_equal true, response.body.include?("steve")
  end

  def test_list_can_be_created
    list = List.new(name: "remodel kitchen", item: "drywall", description: "get the drywall from supplier")
    assert list.valid?, "is not valid"
    assert list.save, "cannot be saved"
  end

  def test_can_create_new_list_via_post
    unique_name = SecureRandom.hex
    response = post "/lists/workouts", list: { name: unique_name, item: "lifts", description: "squats" }
    assert response.redirect?
    assert_equal unique_name, List.last.name
  end

  def test_new_todo_item_creation_returns_the_id
    skip
  end

  def test_can_get_list_of_incompletes_of_given_name
    skip
    response = get "/list/steve"
    assert_equal "exercise", response.body.incompletes
  end

  def test_has_an_item_route
    response = get "/items/thing"
    assert response.ok?
  end

  def test_can_update_item
    skip
    # PATCH /items/:id... adds or updates a due date
  end

  def test_can_delete_item
    skip
    # DELETE /items/:id marks an item as complete
  end

  def test_can_generate_random_incomplete
    skip
    # GET /next returns a random incomplete
  end

  def test_can_search_items
    skip
    # GET /search?q=... finds items containing the given string
  end
end
