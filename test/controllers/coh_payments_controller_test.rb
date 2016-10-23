require 'test_helper'

class CohPaymentsControllerTest < ActionController::TestCase
  setup do
    @coh_payment = coh_payments(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:coh_payments)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create coh_payment" do
    assert_difference('CohPayment.count') do
      post :create, coh_payment: { amount: @coh_payment.amount, candidate_id: @coh_payment.candidate_id, coh_payment_total: @coh_payment.coh_payment_total, date: @coh_payment.date, date_created: @coh_payment.date_created, description: @coh_payment.description, entity_id: @coh_payment.entity_id, entity_type_id: @coh_payment.entity_type_id, expenditure_category_type_id: @coh_payment.expenditure_category_type_id, report_id: @coh_payment.report_id, travel_id: @coh_payment.travel_id }
    end

    assert_redirected_to coh_payment_path(assigns(:coh_payment))
  end

  test "should show coh_payment" do
    get :show, id: @coh_payment
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @coh_payment
    assert_response :success
  end

  test "should update coh_payment" do
    patch :update, id: @coh_payment, coh_payment: { amount: @coh_payment.amount, candidate_id: @coh_payment.candidate_id, coh_payment_total: @coh_payment.coh_payment_total, date: @coh_payment.date, date_created: @coh_payment.date_created, description: @coh_payment.description, entity_id: @coh_payment.entity_id, entity_type_id: @coh_payment.entity_type_id, expenditure_category_type_id: @coh_payment.expenditure_category_type_id, report_id: @coh_payment.report_id, travel_id: @coh_payment.travel_id }
    assert_redirected_to coh_payment_path(assigns(:coh_payment))
  end

  test "should destroy coh_payment" do
    assert_difference('CohPayment.count', -1) do
      delete :destroy, id: @coh_payment
    end

    assert_redirected_to coh_payments_path
  end
end
