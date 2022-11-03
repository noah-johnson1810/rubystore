require "test_helper"

class Staff::StaffsControllerTest < ActionDispatch::IntegrationTest
  test "should get view" do
    get staff_staffs_view_url
    assert_response :success
  end
end
