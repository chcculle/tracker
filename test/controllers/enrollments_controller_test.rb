require 'test_helper'

class EnrollmentsControllerTest < ActionController::TestCase
  setup do
    @enrollment = enrollments(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:enrollments)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create enrollment" do
    assert_difference('Enrollment.count') do
      post :create, enrollment: { enrollment_date: @enrollment.enrollment_date, method_of_contact: @enrollment.method_of_contact, name: @enrollment.name, phone: @enrollment.phone, remarks: @enrollment.remarks }
    end

    assert_redirected_to enrollment_path(assigns(:enrollment))
  end

  test "should show enrollment" do
    get :show, id: @enrollment
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @enrollment
    assert_response :success
  end

  test "should update enrollment" do
    patch :update, id: @enrollment, enrollment: {  }
    assert_redirected_to enrollment_path(assigns(:enrollment))
  end

  test "should destroy enrollment" do
    assert_difference('Enrollment.count', -1) do
      delete :destroy, id: @enrollment
    end

    assert_redirected_to enrollments_path
  end
end
