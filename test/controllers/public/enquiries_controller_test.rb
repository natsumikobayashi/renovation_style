require "test_helper"

class Public::EnquiriesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get public_enquiries_index_url
    assert_response :success
  end

  test "should get show" do
    get public_enquiries_show_url
    assert_response :success
  end

  test "should get new" do
    get public_enquiries_new_url
    assert_response :success
  end

  test "should get confirm" do
    get public_enquiries_confirm_url
    assert_response :success
  end
end
