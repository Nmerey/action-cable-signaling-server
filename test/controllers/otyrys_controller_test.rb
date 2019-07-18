require 'test_helper'

class OtyrysControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get otyrys_new_url
    assert_response :success
  end

  test "should get create" do
    get otyrys_create_url
    assert_response :success
  end

  test "should get destroy" do
    get otyrys_destroy_url
    assert_response :success
  end

end
