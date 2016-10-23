require 'test_helper'

class UnpaidIncurredObligationsControllerTest < ActionController::TestCase
  setup do
    @unpaid_incurred_obligation = unpaid_incurred_obligations(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:unpaid_incurred_obligations)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create unpaid_incurred_obligation" do
    assert_difference('UnpaidIncurredObligation.count') do
      post :create, unpaid_incurred_obligation: { amount: @unpaid_incurred_obligation.amount, candidate_id: @unpaid_incurred_obligation.candidate_id, category_id: @unpaid_incurred_obligation.category_id, date: @unpaid_incurred_obligation.date, date_created: @unpaid_incurred_obligation.date_created, description: @unpaid_incurred_obligation.description, entity_id: @unpaid_incurred_obligation.entity_id, entity_type_id: @unpaid_incurred_obligation.entity_type_id, expenditure_type_id: @unpaid_incurred_obligation.expenditure_type_id, report_id: @unpaid_incurred_obligation.report_id, transaction_id: @unpaid_incurred_obligation.transaction_id, travel_id: @unpaid_incurred_obligation.travel_id, ul_obligation_total: @unpaid_incurred_obligation.ul_obligation_total }
    end

    assert_redirected_to unpaid_incurred_obligation_path(assigns(:unpaid_incurred_obligation))
  end

  test "should show unpaid_incurred_obligation" do
    get :show, id: @unpaid_incurred_obligation
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @unpaid_incurred_obligation
    assert_response :success
  end

  test "should update unpaid_incurred_obligation" do
    patch :update, id: @unpaid_incurred_obligation, unpaid_incurred_obligation: { amount: @unpaid_incurred_obligation.amount, candidate_id: @unpaid_incurred_obligation.candidate_id, category_id: @unpaid_incurred_obligation.category_id, date: @unpaid_incurred_obligation.date, date_created: @unpaid_incurred_obligation.date_created, description: @unpaid_incurred_obligation.description, entity_id: @unpaid_incurred_obligation.entity_id, entity_type_id: @unpaid_incurred_obligation.entity_type_id, expenditure_type_id: @unpaid_incurred_obligation.expenditure_type_id, report_id: @unpaid_incurred_obligation.report_id, transaction_id: @unpaid_incurred_obligation.transaction_id, travel_id: @unpaid_incurred_obligation.travel_id, ul_obligation_total: @unpaid_incurred_obligation.ul_obligation_total }
    assert_redirected_to unpaid_incurred_obligation_path(assigns(:unpaid_incurred_obligation))
  end

  test "should destroy unpaid_incurred_obligation" do
    assert_difference('UnpaidIncurredObligation.count', -1) do
      delete :destroy, id: @unpaid_incurred_obligation
    end

    assert_redirected_to unpaid_incurred_obligations_path
  end
end
