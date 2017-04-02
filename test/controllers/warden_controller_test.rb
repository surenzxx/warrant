require 'test_helper'

class WardenControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get warden_index_url
    assert_response :success
  end

end
