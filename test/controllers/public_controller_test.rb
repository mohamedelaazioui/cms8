require "test_helper"

class PublicControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get public_home_url
    assert_response :success
  end

  test "should get about" do
    get public_about_url
    assert_response :success
  end

  test "should get services" do
    get public_services_url
    assert_response :success
  end

  test "should get testimonials" do
    get public_testimonials_url
    assert_response :success
  end
end
