require 'test_helper'

class CandidatesControllerTest < ActionController::TestCase
  setup do
    @candidate = candidates(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:candidates)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create candidate" do
    assert_difference('Candidate.count') do
      post :create, candidate: { address: @candidate.address, alias: @candidate.alias, appt_suite_num: @candidate.appt_suite_num, change_address: @candidate.change_address, city: @candidate.city, extension: @candidate.extension, first_name: @candidate.first_name, last_name: @candidate.last_name, mi: @candidate.mi, phone: @candidate.phone, prefix_id: @candidate.prefix_id, state_id: @candidate.state_id, suffix: @candidate.suffix, zip_code: @candidate.zip_code }
    end

    assert_redirected_to candidate_path(assigns(:candidate))
  end

  test "should show candidate" do
    get :show, id: @candidate
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @candidate
    assert_response :success
  end

  test "should update candidate" do
    patch :update, id: @candidate, candidate: { address: @candidate.address, alias: @candidate.alias, appt_suite_num: @candidate.appt_suite_num, change_address: @candidate.change_address, city: @candidate.city, extension: @candidate.extension, first_name: @candidate.first_name, last_name: @candidate.last_name, mi: @candidate.mi, phone: @candidate.phone, prefix_id: @candidate.prefix_id, state_id: @candidate.state_id, suffix: @candidate.suffix, zip_code: @candidate.zip_code }
    assert_redirected_to candidate_path(assigns(:candidate))
  end

  test "should destroy candidate" do
    assert_difference('Candidate.count', -1) do
      delete :destroy, id: @candidate
    end

    assert_redirected_to candidates_path
  end
end
