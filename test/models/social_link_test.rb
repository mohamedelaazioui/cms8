require "test_helper"

class SocialLinkTest < ActiveSupport::TestCase
  test "should be valid with valid attributes" do
    social_link = SocialLink.new(
      name: "Twitter",
      url: "https://twitter.com/example",
      position: 1
    )
    assert social_link.valid?
  end

  test "should save social link with all attributes" do
    social_link = SocialLink.create(
      name: "Facebook",
      url: "https://facebook.com/example",
      position: 2
    )
    assert social_link.persisted?
    assert_equal "Facebook", social_link.name
    assert_equal "https://facebook.com/example", social_link.url
    assert_equal 2, social_link.position
  end

  test "should have timestamps" do
    social_link = SocialLink.create(name: "LinkedIn", url: "https://linkedin.com")
    assert_not_nil social_link.created_at
    assert_not_nil social_link.updated_at
  end
end
