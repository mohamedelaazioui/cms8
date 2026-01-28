require "test_helper"

class TestimonialTest < ActiveSupport::TestCase
  test "should be valid with valid attributes" do
    testimonial = Testimonial.new(
      name: "John Doe",
      quote: "Great service! Highly recommended.",
      locale: "en"
    )
    assert testimonial.valid?
  end

  test "should save testimonial with all attributes" do
    testimonial = Testimonial.create(
      name: "Jane Smith",
      quote: "Excellent work and professional team.",
      locale: "en"
    )
    assert testimonial.persisted?
    assert_equal "Jane Smith", testimonial.name
    assert_equal "Excellent work and professional team.", testimonial.quote
    assert_equal "en", testimonial.locale
  end

  test "should have timestamps" do
    testimonial = Testimonial.create(name: "Test User", quote: "Test quote")
    assert_not_nil testimonial.created_at
    assert_not_nil testimonial.updated_at
  end
end
