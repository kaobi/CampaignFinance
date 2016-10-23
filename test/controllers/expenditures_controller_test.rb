require 'test_helper'

class ExpendituresControllerTest < ActionController::TestCase
  setup do
    @expenditure = expenditures(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:expenditures)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create expenditure" do
    assert_difference('Expenditure.count') do
      post :create, expenditure: { amount: @expenditure.amount, candidate_id: @expenditure.candidate_id, category: @expenditure.category, date: @expenditure.date, date_created: @expenditure.date_created, entity_id: @expenditure.entity_id, entity_type_id: @expenditure.entity_type_id, expenditure_total: @expenditure.expenditure_total, expenditure_type_id: @expenditure.expenditure_type_id, living_expense: @expenditure.living_expense, payment_method_id: @expenditure.payment_method_id, purpose: @expenditure.purpose, reimbursement: @expenditure.reimbursement, report_id: @expenditure.report_id, transaction_id: @expenditure.transaction_id, travel_id: @expenditure.travel_id }
    end

    assert_redirected_to expenditure_path(assigns(:expenditure))
  end

  test "should show expenditure" do
    get :show, id: @expenditure
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @expenditure
    assert_response :success
  end

  test "should update expenditure" do
    patch :update, id: @expenditure, expenditure: { amount: @expenditure.amount, candidate_id: @expenditure.candidate_id, category: @expenditure.category, date: @expenditure.date, date_created: @expenditure.date_created, entity_id: @expenditure.entity_id, entity_type_id: @expenditure.entity_type_id, expenditure_total: @expenditure.expenditure_total, expenditure_type_id: @expenditure.expenditure_type_id, living_expense: @expenditure.living_expense, payment_method_id: @expenditure.payment_method_id, purpose: @expenditure.purpose, reimbursement: @expenditure.reimbursement, report_id: @expenditure.report_id, transaction_id: @expenditure.transaction_id, travel_id: @expenditure.travel_id }
    assert_redirected_to expenditure_path(assigns(:expenditure))
  end

  test "should destroy expenditure" do
    assert_difference('Expenditure.count', -1) do
      delete :destroy, id: @expenditure
    end

    assert_redirected_to expenditures_path
  end
end
