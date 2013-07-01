require 'test_helper'

class NovanetLocationEnrollmentsControllerTest < ActionController::TestCase
  setup do
    @novanet_location_enrollment = novanet_location_enrollments(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:novanet_location_enrollments)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create novanet_location_enrollment" do
    assert_difference('NovanetLocationEnrollment.count') do
      post :create, novanet_location_enrollment: { NovanetLocation_id: @novanet_location_enrollment.NovanetLocation_id, student_id: @novanet_location_enrollment.student_id }
    end

    assert_redirected_to novanet_location_enrollment_path(assigns(:novanet_location_enrollment))
  end

  test "should show novanet_location_enrollment" do
    get :show, id: @novanet_location_enrollment
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @novanet_location_enrollment
    assert_response :success
  end

  test "should update novanet_location_enrollment" do
    patch :update, id: @novanet_location_enrollment, novanet_location_enrollment: { NovanetLocation_id: @novanet_location_enrollment.NovanetLocation_id, student_id: @novanet_location_enrollment.student_id }
    assert_redirected_to novanet_location_enrollment_path(assigns(:novanet_location_enrollment))
  end

  test "should destroy novanet_location_enrollment" do
    assert_difference('NovanetLocationEnrollment.count', -1) do
      delete :destroy, id: @novanet_location_enrollment
    end

    assert_redirected_to novanet_location_enrollments_path
  end
end
