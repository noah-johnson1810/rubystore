require "test_helper"

class Controllers::Staff::StaffsControllerTest < ActionDispatch::IntegrationTest
  test "should get viewStaff" do
    get controllers_staff_staffs_viewStaff_url
    assert_response :success
  end
end
