require 'test_helper'

class NovanetProgramEnrollmentsControllerTest < ActionController::TestCase
  setup do
    @novanet_program_enrollment = novanet_program_enrollments(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:novanet_program_enrollments)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create novanet_program_enrollment" do
    assert_difference('NovanetProgramEnrollment.count') do
      post :create, novanet_program_enrollment: { novanet_location_id: @novanet_program_enrollment.novanet_location_id, student_id: @novanet_program_enrollment.student_id }
    end

    assert_redirected_to novanet_program_enrollment_path(assigns(:novanet_program_enrollment))
  end

  test "should show novanet_program_enrollment" do
    get :show, id: @novanet_program_enrollment
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @novanet_program_enrollment
    assert_response :success
  end

  test "should update novanet_program_enrollment" do
    patch :update, id: @novanet_program_enrollment, novanet_program_enrollment: { novanet_location_id: @novanet_program_enrollment.novanet_location_id, student_id: @novanet_program_enrollment.student_id }
    assert_redirected_to novanet_program_enrollment_path(assigns(:novanet_program_enrollment))
  end

  test "should destroy novanet_program_enrollment" do
    assert_difference('NovanetProgramEnrollment.count', -1) do
      delete :destroy, id: @novanet_program_enrollment
    end

    assert_redirected_to novanet_program_enrollments_path
  end
end
