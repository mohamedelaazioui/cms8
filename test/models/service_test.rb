require "test_helper"

class ServiceTest < ActiveSupport::TestCase
  test "should be valid with valid attributes" do
    service = Service.new(
      title: "Web Development",
      description: "We build amazing websites",
      position: 1,
      locale: "en"
    )
    assert service.valid?
  end

  test "should save service with all attributes" do
    service = Service.create(
      title: "Mobile Apps",
      description: "Native and cross-platform mobile applications",
      position: 2,
      locale: "en"
    )
    assert service.persisted?
    assert_equal "Mobile Apps", service.title
    assert_equal "Native and cross-platform mobile applications", service.description
    assert_equal 2, service.position
    assert_equal "en", service.locale
  end

  test "should have timestamps" do
    service = Service.create(title: "Test Service")
    assert_not_nil service.created_at
    assert_not_nil service.updated_at
  end
end
