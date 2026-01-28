require "test_helper"

class ContactMessageTest < ActiveSupport::TestCase
  test "should be valid with valid attributes" do
    message = ContactMessage.new(
      name: "John Doe",
      email: "john@example.com",
      message: "Hello, I would like to inquire about your services."
    )
    assert message.valid?
  end

  test "should save contact message with all attributes" do
    message = ContactMessage.create(
      name: "Jane Smith",
      email: "jane@example.com",
      message: "I need help with my project."
    )
    assert message.persisted?
    assert_equal "Jane Smith", message.name
    assert_equal "jane@example.com", message.email
    assert_equal "I need help with my project.", message.message
  end

  test "should have timestamps" do
    message = ContactMessage.create(
      name: "Test User",
      email: "test@example.com",
      message: "Test message"
    )
    assert_not_nil message.created_at
    assert_not_nil message.updated_at
  end
end
