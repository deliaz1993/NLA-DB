require 'test_helper'

class NovanetCourseEnrollmentsControllerTest < ActionController::TestCase
  setup do
    @novanet_course_enrollment = novanet_course_enrollments(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:novanet_course_enrollments)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create novanet_course_enrollment" do
    assert_difference('NovanetCourseEnrollment.count') do
      post :create, novanet_course_enrollment: { NovanetCourse_id: @novanet_course_enrollment.NovanetCourse_id, student_id: @novanet_course_enrollment.student_id }
    end

    assert_redirected_to novanet_course_enrollment_path(assigns(:novanet_course_enrollment))
  end

  test "should show novanet_course_enrollment" do
    get :show, id: @novanet_course_enrollment
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @novanet_course_enrollment
    assert_response :success
  end

  test "should update novanet_course_enrollment" do
    patch :update, id: @novanet_course_enrollment, novanet_course_enrollment: { NovanetCourse_id: @novanet_course_enrollment.NovanetCourse_id, student_id: @novanet_course_enrollment.student_id }
    assert_redirected_to novanet_course_enrollment_path(assigns(:novanet_course_enrollment))
  end

  test "should destroy novanet_course_enrollment" do
    assert_difference('NovanetCourseEnrollment.count', -1) do
      delete :destroy, id: @novanet_course_enrollment
    end

    assert_redirected_to novanet_course_enrollments_path
  end
end
