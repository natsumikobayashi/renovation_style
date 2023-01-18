require "test_helper"

class Observer::CustomersControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get observer_customers_index_url
    assert_response :success
  end
end
