require 'test_helper'

class LoansControllerTest < ActionController::TestCase
  setup do
    @loan = loans(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:loans)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create loan" do
    assert_difference('Loan.count') do
      post :create, loan: { amount: @loan.amount, amount_guaranteed: @loan.amount_guaranteed, candidate_id: @loan.candidate_id, collateral_description: @loan.collateral_description, date: @loan.date, date_created: @loan.date_created, entity_id: @loan.entity_id, entity_type_id: @loan.entity_type_id, interest_rate: @loan.interest_rate, loan_total: @loan.loan_total, maturity_date: @loan.maturity_date, out_of_state_pac: @loan.out_of_state_pac, pac_id: @loan.pac_id, personal_fund: @loan.personal_fund, report_id: @loan.report_id, transaction_id: @loan.transaction_id }
    end

    assert_redirected_to loan_path(assigns(:loan))
  end

  test "should show loan" do
    get :show, id: @loan
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @loan
    assert_response :success
  end

  test "should update loan" do
    patch :update, id: @loan, loan: { amount: @loan.amount, amount_guaranteed: @loan.amount_guaranteed, candidate_id: @loan.candidate_id, collateral_description: @loan.collateral_description, date: @loan.date, date_created: @loan.date_created, entity_id: @loan.entity_id, entity_type_id: @loan.entity_type_id, interest_rate: @loan.interest_rate, loan_total: @loan.loan_total, maturity_date: @loan.maturity_date, out_of_state_pac: @loan.out_of_state_pac, pac_id: @loan.pac_id, personal_fund: @loan.personal_fund, report_id: @loan.report_id, transaction_id: @loan.transaction_id }
    assert_redirected_to loan_path(assigns(:loan))
  end

  test "should destroy loan" do
    assert_difference('Loan.count', -1) do
      delete :destroy, id: @loan
    end

    assert_redirected_to loans_path
  end
end
