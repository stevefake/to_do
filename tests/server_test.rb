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
end
