require "test_helper"

class Observer::AdminsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get observer_admins_index_url
    assert_response :success
  end
end
