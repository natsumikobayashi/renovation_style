require "test_helper"

class Admin::ManagersControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get admin_managers_show_url
    assert_response :success
  end

  test "should get confirm" do
    get admin_managers_confirm_url
    assert_response :success
  end
end
