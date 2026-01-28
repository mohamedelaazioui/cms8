require "test_helper"

class Admin::DashboardControllerTest < ActionDispatch::IntegrationTest
  setup do
    @admin = admins(:one)
  end

  test "should get index" do
    get admin_dashboard_index_url
    assert_response :success
  end

  test "should render dashboard view" do
    get admin_dashboard_index_url
    assert_response :success
  end
end
