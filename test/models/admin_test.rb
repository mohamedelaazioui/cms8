require "test_helper"

class AdminTest < ActiveSupport::TestCase
  test "should be valid with valid attributes" do
    admin = Admin.new(email: "test@example.com", password: "password123")
    assert admin.valid?
  end

  test "should require email" do
    admin = Admin.new(password: "password123")
    assert_not admin.valid?
    assert_includes admin.errors[:email], "can't be blank"
  end

  test "should require unique email" do
    Admin.create!(email: "test@example.com", password: "password123")
    admin = Admin.new(email: "test@example.com", password: "password456")
    assert_not admin.valid?
    assert_includes admin.errors[:email], "has already been taken"
  end

  test "should require valid email format" do
    admin = Admin.new(email: "invalid_email", password: "password123")
    assert_not admin.valid?
    assert_includes admin.errors[:email], "is invalid"
  end

  test "should require password" do
    admin = Admin.new(email: "test@example.com")
    assert_not admin.valid?
    assert_includes admin.errors[:password], "can't be blank"
  end

  test "should require minimum password length" do
    admin = Admin.new(email: "test@example.com", password: "short")
    assert_not admin.valid?
    assert_includes admin.errors[:password], "is too short (minimum is 6 characters)"
  end
end
