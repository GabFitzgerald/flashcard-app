require 'test_helper'

class PagesControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get pages_home_url
    assert_response :success
  end

  test "should get about" do
    get pages_about_url
    assert_response :success
  end

  test "should get how_to_use" do
    get pages_how_to_use_url
    assert_response :success
  end

  test "should get educators" do
    get pages_educators_url
    assert_response :success
  end

  test "should get feedback" do
    get pages_feedback_url
    assert_response :success
  end

end
