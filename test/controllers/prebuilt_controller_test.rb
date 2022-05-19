require "test_helper"

class PrebuiltControllerTest < ActionDispatch::IntegrationTest
  test "should get evocation" do
    get prebuilt_evocation_url
    assert_response :success
  end
end
