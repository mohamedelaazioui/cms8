require "test_helper"

class ContactMessagesControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get contact_messages_new_url
    assert_response :success
  end

  test "should get create" do
    get contact_messages_create_url
    assert_response :success
  end

  # Future test for when proper POST route is implemented
  # test "should create contact message with valid data" do
  #   assert_difference("ContactMessage.count", 1) do
  #     post contact_messages_url, params: {
  #       contact_message: {
  #         name: "John Doe",
  #         email: "john@example.com",
  #         message: "This is a test message"
  #       }
  #     }
  #   end
  # end
end
