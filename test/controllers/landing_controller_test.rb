require 'test_helper'

class LandingControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get landing_new_url
    assert_response :success
  end

  test "should get create" do
    get landing_create_url
    assert_response :success
  end

end
