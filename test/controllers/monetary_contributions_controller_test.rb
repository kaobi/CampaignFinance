require 'test_helper'

class MonetaryContributionsControllerTest < ActionController::TestCase
  setup do
    @monetary_contribution = monetary_contributions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:monetary_contributions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create monetary_contribution" do
    assert_difference('MonetaryContribution.count') do
      post :create, monetary_contribution: { amount: @monetary_contribution.amount, candiate_id: @monetary_contribution.candiate_id, date: @monetary_contribution.date, date_created: @monetary_contribution.date_created, description: @monetary_contribution.description, entity_id: @monetary_contribution.entity_id, entity_type_id: @monetary_contribution.entity_type_id, mc_total: @monetary_contribution.mc_total, out_of_state_pac: @monetary_contribution.out_of_state_pac, pac_id: @monetary_contribution.pac_id, report_id: @monetary_contribution.report_id, transaction_id: @monetary_contribution.transaction_id }
    end

    assert_redirected_to monetary_contribution_path(assigns(:monetary_contribution))
  end

  test "should show monetary_contribution" do
    get :show, id: @monetary_contribution
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @monetary_contribution
    assert_response :success
  end

  test "should update monetary_contribution" do
    patch :update, id: @monetary_contribution, monetary_contribution: { amount: @monetary_contribution.amount, candiate_id: @monetary_contribution.candiate_id, date: @monetary_contribution.date, date_created: @monetary_contribution.date_created, description: @monetary_contribution.description, entity_id: @monetary_contribution.entity_id, entity_type_id: @monetary_contribution.entity_type_id, mc_total: @monetary_contribution.mc_total, out_of_state_pac: @monetary_contribution.out_of_state_pac, pac_id: @monetary_contribution.pac_id, report_id: @monetary_contribution.report_id, transaction_id: @monetary_contribution.transaction_id }
    assert_redirected_to monetary_contribution_path(assigns(:monetary_contribution))
  end

  test "should destroy monetary_contribution" do
    assert_difference('MonetaryContribution.count', -1) do
      delete :destroy, id: @monetary_contribution
    end

    assert_redirected_to monetary_contributions_path
  end
end
