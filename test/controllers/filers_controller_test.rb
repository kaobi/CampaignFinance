require 'test_helper'

class FilersControllerTest < ActionController::TestCase
  setup do
    @filer = filers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:filers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create filer" do
    assert_difference('Filer.count') do
      post :create, filer: { active: @filer.active, address: @filer.address, city: @filer.city, committee: @filer.committee, date_created: @filer.date_created, email: @filer.email, extension: @filer.extension, filer_type_id: @filer.filer_type_id, first_name: @filer.first_name, hand_deliver: @filer.hand_deliver, last_name: @filer.last_name, mi: @filer.mi, office_held_id: @filer.office_held_id, office_sought_id: @filer.office_sought_id, phone: @filer.phone, postmark: @filer.postmark, receive_date: @filer.receive_date, secondary_address: @filer.secondary_address, state_id: @filer.state_id, suite: @filer.suite, user_account_id: @filer.user_account_id, zip_code: @filer.zip_code }
    end

    assert_redirected_to filer_path(assigns(:filer))
  end

  test "should show filer" do
    get :show, id: @filer
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @filer
    assert_response :success
  end

  test "should update filer" do
    patch :update, id: @filer, filer: { active: @filer.active, address: @filer.address, city: @filer.city, committee: @filer.committee, date_created: @filer.date_created, email: @filer.email, extension: @filer.extension, filer_type_id: @filer.filer_type_id, first_name: @filer.first_name, hand_deliver: @filer.hand_deliver, last_name: @filer.last_name, mi: @filer.mi, office_held_id: @filer.office_held_id, office_sought_id: @filer.office_sought_id, phone: @filer.phone, postmark: @filer.postmark, receive_date: @filer.receive_date, secondary_address: @filer.secondary_address, state_id: @filer.state_id, suite: @filer.suite, user_account_id: @filer.user_account_id, zip_code: @filer.zip_code }
    assert_redirected_to filer_path(assigns(:filer))
  end

  test "should destroy filer" do
    assert_difference('Filer.count', -1) do
      delete :destroy, id: @filer
    end

    assert_redirected_to filers_path
  end
end
