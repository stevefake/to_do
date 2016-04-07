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
    assert_equal true, response.body.include?("steve")
  end

  def test_can_get_list_incompletes_of_given_name
    response = get "/list/steve"
    assert_equal true, response.body.include?("steve")
  end



end
