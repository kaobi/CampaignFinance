require 'test_helper'

class PledgesControllerTest < ActionController::TestCase
  setup do
    @pledge = pledges(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:pledges)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create pledge" do
    assert_difference('Pledge.count') do
      post :create, pledge: { amount: @pledge.amount, candidate_id: @pledge.candidate_id, date: @pledge.date, date_created: @pledge.date_created, description: @pledge.description, entity_id: @pledge.entity_id, entity_type_id: @pledge.entity_type_id, out_of_state_pac: @pledge.out_of_state_pac, pac_id: @pledge.pac_id, pledge_total: @pledge.pledge_total, report_id: @pledge.report_id, transaction_id: @pledge.transaction_id, travel_id: @pledge.travel_id }
    end

    assert_redirected_to pledge_path(assigns(:pledge))
  end

  test "should show pledge" do
    get :show, id: @pledge
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @pledge
    assert_response :success
  end

  test "should update pledge" do
    patch :update, id: @pledge, pledge: { amount: @pledge.amount, candidate_id: @pledge.candidate_id, date: @pledge.date, date_created: @pledge.date_created, description: @pledge.description, entity_id: @pledge.entity_id, entity_type_id: @pledge.entity_type_id, out_of_state_pac: @pledge.out_of_state_pac, pac_id: @pledge.pac_id, pledge_total: @pledge.pledge_total, report_id: @pledge.report_id, transaction_id: @pledge.transaction_id, travel_id: @pledge.travel_id }
    assert_redirected_to pledge_path(assigns(:pledge))
  end

  test "should destroy pledge" do
    assert_difference('Pledge.count', -1) do
      delete :destroy, id: @pledge
    end

    assert_redirected_to pledges_path
  end
end
