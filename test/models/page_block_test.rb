require "test_helper"

class PageBlockTest < ActiveSupport::TestCase
  test "should be valid with valid attributes" do
    page = Page.create(title: "Test Page", slug: "test")
    page_block = PageBlock.new(
      page: page,
      block_type: "hero",
      position: 1,
      data: { heading: "Welcome", content: "Test content" }
    )
    assert page_block.valid?
  end

  test "should belong to page" do
    page = Page.create(title: "Test Page", slug: "test")
    page_block = PageBlock.create(
      page: page,
      block_type: "content",
      position: 1
    )
    assert_equal page, page_block.page
  end

  test "should require page" do
    page_block = PageBlock.new(block_type: "hero", position: 1)
    assert_not page_block.valid?
    assert_includes page_block.errors[:page], "must exist"
  end

  test "should store data as jsonb" do
    page = Page.create(title: "Test Page", slug: "test")
    data = { heading: "Title", subtitle: "Subtitle", cta: "Click here" }
    page_block = PageBlock.create(
      page: page,
      block_type: "hero",
      position: 1,
      data: data
    )
    assert_equal data.stringify_keys, page_block.data
  end

  test "should have timestamps" do
    page = Page.create(title: "Test Page", slug: "test")
    page_block = PageBlock.create(page: page, block_type: "content")
    assert_not_nil page_block.created_at
    assert_not_nil page_block.updated_at
  end
end
