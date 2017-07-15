require 'test_helper'

class OurDoctorsControllerTest < ActionController::TestCase
  setup do
    @our_doctor = our_doctors(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:our_doctors)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create our_doctor" do
    assert_difference('OurDoctor.count') do
      post :create, our_doctor: { firstname: @our_doctor.firstname, image_url: @our_doctor.image_url, lastname: @our_doctor.lastname, speciality: @our_doctor.speciality }
    end

    assert_redirected_to our_doctor_path(assigns(:our_doctor))
  end

  test "should show our_doctor" do
    get :show, id: @our_doctor
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @our_doctor
    assert_response :success
  end

  test "should update our_doctor" do
    patch :update, id: @our_doctor, our_doctor: { firstname: @our_doctor.firstname, image_url: @our_doctor.image_url, lastname: @our_doctor.lastname, speciality: @our_doctor.speciality }
    assert_redirected_to our_doctor_path(assigns(:our_doctor))
  end

  test "should destroy our_doctor" do
    assert_difference('OurDoctor.count', -1) do
      delete :destroy, id: @our_doctor
    end

    assert_redirected_to our_doctors_path
  end
end
