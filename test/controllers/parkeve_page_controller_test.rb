require 'test_helper'

class ParkevePageControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get parkeve_page_home_url
    assert_response :success
  end

  test "should get help" do
    get parkeve_page_help_url
    assert_response :success
  end

  test "should get sign_up" do
    get parkeve_page_sign_up_url
    assert_response :success
  end

  test "should get about" do
    get parkeve_page_about_url
    assert_response :success
  end

  test "should get propietor" do
    get parkeve_page_propietor_url
    assert_response :success
  end

  test "should get contact" do
    get parkeve_page_contact_url
    assert_response :success
  end

  test "should get log_in" do
    get parkeve_page_log_in_url
    assert_response :success
  end

end
