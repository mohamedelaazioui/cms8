require "test_helper"

class Admin::SocialLinksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @admin = admins(:one)
    @social_link = social_links(:one)
  end

  test "should get index" do
    get admin_social_links_index_url
    assert_response :success
  end

  test "should get new" do
    get admin_social_links_new_url
    assert_response :success
  end

  test "should get create" do
    get admin_social_links_create_url
    assert_response :success
  end

  test "should get edit" do
    get admin_social_links_edit_url
    assert_response :success
  end

  test "should get update" do
    get admin_social_links_update_url
    assert_response :success
  end

  test "should get destroy" do
    get admin_social_links_destroy_url
    assert_response :success
  end

  # Future tests for when proper RESTful routes are implemented
  # test "should create social link with valid data" do
  #   assert_difference("SocialLink.count", 1) do
  #     post admin_social_links_url, params: {
  #       social_link: { name: "Twitter", url: "https://twitter.com/example", position: 1 }
  #     }
  #   end
  # end
  #
  # test "should update social link" do
  #   patch admin_social_link_url(@social_link), params: {
  #     social_link: { name: "Updated Social Link" }
  #   }
  #   @social_link.reload
  #   assert_equal "Updated Social Link", @social_link.name
  # end
  #
  # test "should destroy social link" do
  #   assert_difference("SocialLink.count", -1) do
  #     delete admin_social_link_url(@social_link)
  #   end
  # end
end
