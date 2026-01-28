require "test_helper"

class Admin::PagesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @admin = admins(:one)
    @page = pages(:one)
  end

  test "should get index" do
    get admin_pages_index_url
    assert_response :success
  end

  test "should get new" do
    get admin_pages_new_url
    assert_response :success
  end

  test "should get create" do
    get admin_pages_create_url
    assert_response :success
  end

  test "should get edit" do
    get admin_pages_edit_url
    assert_response :success
  end

  test "should get update" do
    get admin_pages_update_url
    assert_response :success
  end

  test "should get destroy" do
    get admin_pages_destroy_url
    assert_response :success
  end

  # Future tests for when proper RESTful routes are implemented
  # test "should create page with valid data" do
  #   assert_difference("Page.count", 1) do
  #     post admin_pages_url, params: {
  #       page: { title: "New Page", slug: "new-page", published: true, locale: "en" }
  #     }
  #   end
  # end
  #
  # test "should update page" do
  #   patch admin_page_url(@page), params: {
  #     page: { title: "Updated Title" }
  #   }
  #   @page.reload
  #   assert_equal "Updated Title", @page.title
  # end
  #
  # test "should destroy page" do
  #   assert_difference("Page.count", -1) do
  #     delete admin_page_url(@page)
  #   end
  # end
end
