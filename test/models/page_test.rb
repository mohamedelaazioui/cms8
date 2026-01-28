require "test_helper"

class PageTest < ActiveSupport::TestCase
  test "should be valid with valid attributes" do
    page = Page.new(
      title: "Home Page",
      slug: "home",
      published: true,
      locale: "en"
    )
    assert page.valid?
  end

  test "should save page with all attributes" do
    page = Page.create(
      title: "About Us",
      slug: "about-us",
      published: false,
      locale: "en"
    )
    assert page.persisted?
    assert_equal "About Us", page.title
    assert_equal "about-us", page.slug
    assert_equal false, page.published
    assert_equal "en", page.locale
  end

  test "should have timestamps" do
    page = Page.create(title: "Test", slug: "test")
    assert_not_nil page.created_at
    assert_not_nil page.updated_at
  end
end
