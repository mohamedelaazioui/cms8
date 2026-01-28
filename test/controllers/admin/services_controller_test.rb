require "test_helper"

class Admin::ServicesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @admin = admins(:one)
    @service = services(:one)
  end

  test "should get index" do
    get admin_services_index_url
    assert_response :success
  end

  test "should get new" do
    get admin_services_new_url
    assert_response :success
  end

  test "should get create" do
    get admin_services_create_url
    assert_response :success
  end

  test "should get edit" do
    get admin_services_edit_url
    assert_response :success
  end

  test "should get update" do
    get admin_services_update_url
    assert_response :success
  end

  test "should get destroy" do
    get admin_services_destroy_url
    assert_response :success
  end

  # Future tests for when proper RESTful routes are implemented
  # test "should create service with valid data" do
  #   assert_difference("Service.count", 1) do
  #     post admin_services_url, params: {
  #       service: { title: "Web Development", description: "Professional services", position: 1, locale: "en" }
  #     }
  #   end
  # end
  #
  # test "should update service" do
  #   patch admin_service_url(@service), params: {
  #     service: { title: "Updated Service Title" }
  #   }
  #   @service.reload
  #   assert_equal "Updated Service Title", @service.title
  # end
  #
  # test "should destroy service" do
  #   assert_difference("Service.count", -1) do
  #     delete admin_service_url(@service)
  #   end
  # end
end
