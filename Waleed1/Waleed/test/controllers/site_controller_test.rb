require 'test_helper'

class SiteControllerTest < ActionController::TestCase
  test "should get appointments" do
    get :appointments
    assert_response :success
  end

  test "should get ourdoctor" do
    get :ourdoctor
    assert_response :success
  end

  test "should get aboutus" do
    get :aboutus
    assert_response :success
  end

end
