require "test_helper"

class Observer::HomesControllerTest < ActionDispatch::IntegrationTest
  test "should get top" do
    get observer_homes_top_url
    assert_response :success
  end
end
