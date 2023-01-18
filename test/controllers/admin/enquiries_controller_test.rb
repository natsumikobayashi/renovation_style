require "test_helper"

class Admin::EnquiriesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get admin_enquiries_index_url
    assert_response :success
  end

  test "should get show" do
    get admin_enquiries_show_url
    assert_response :success
  end
end
