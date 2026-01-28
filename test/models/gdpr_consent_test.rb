require "test_helper"

class GdprConsentTest < ActiveSupport::TestCase
  test "should be valid with valid attributes" do
    consent = GdprConsent.new(
      ip: "192.168.1.1",
      accepted_at: Time.current
    )
    assert consent.valid?
  end

  test "should save gdpr consent with all attributes" do
    accepted_time = Time.current
    consent = GdprConsent.create(
      ip: "10.0.0.1",
      accepted_at: accepted_time
    )
    assert consent.persisted?
    assert_equal "10.0.0.1", consent.ip
    assert_equal accepted_time.to_i, consent.accepted_at.to_i
  end

  test "should have timestamps" do
    consent = GdprConsent.create(ip: "127.0.0.1", accepted_at: Time.current)
    assert_not_nil consent.created_at
    assert_not_nil consent.updated_at
  end

  test "should allow nil accepted_at" do
    consent = GdprConsent.new(ip: "192.168.1.1", accepted_at: nil)
    assert consent.valid?
  end
end
