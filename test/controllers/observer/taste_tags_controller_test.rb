require "test_helper"

class Observer::TasteTagsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get observer_taste_tags_index_url
    assert_response :success
  end
end
