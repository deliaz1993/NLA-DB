require 'test_helper'

class NovanetLocationsControllerTest < ActionController::TestCase
  setup do
    @novanet_location = novanet_locations(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:novanet_locations)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create novanet_location" do
    assert_difference('NovanetLocation.count') do
      post :create, novanet_location: { address: @novanet_location.address, employee_id: @novanet_location.employee_id, name: @novanet_location.name }
    end

    assert_redirected_to novanet_location_path(assigns(:novanet_location))
  end

  test "should show novanet_location" do
    get :show, id: @novanet_location
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @novanet_location
    assert_response :success
  end

  test "should update novanet_location" do
    patch :update, id: @novanet_location, novanet_location: { address: @novanet_location.address, employee_id: @novanet_location.employee_id, name: @novanet_location.name }
    assert_redirected_to novanet_location_path(assigns(:novanet_location))
  end

  test "should destroy novanet_location" do
    assert_difference('NovanetLocation.count', -1) do
      delete :destroy, id: @novanet_location
    end

    assert_redirected_to novanet_locations_path
  end
end
