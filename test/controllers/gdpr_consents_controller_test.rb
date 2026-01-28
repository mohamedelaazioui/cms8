require "test_helper"

class GdprConsentsControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get gdpr_consents_create_url
    assert_response :success
  end

  # Future test for when proper POST route is implemented
  # test "should create gdpr consent" do
  #   assert_difference("GdprConsent.count", 1) do
  #     post gdpr_consents_url, params: {
  #       gdpr_consent: {
  #         ip: "192.168.1.1",
  #         accepted_at: Time.current
  #       }
  #     }
  #   end
  # end
end
