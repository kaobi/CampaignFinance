require 'test_helper'

class EntitiesControllerTest < ActionController::TestCase
  setup do
    @entity = entities(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:entities)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create entity" do
    assert_difference('Entity.count') do
      post :create, entity: { address: @entity.address, change_address: @entity.change_address, city: @entity.city, company: @entity.company, date_created: @entity.date_created, entity_type_id: @entity.entity_type_id, first_name: @entity.first_name, last_name: @entity.last_name, mi: @entity.mi, occupation_org: @entity.occupation_org, prefix_id: @entity.prefix_id, secondary_address: @entity.secondary_address, state_id: @entity.state_id, suffix: @entity.suffix, suite: @entity.suite, zip_code: @entity.zip_code }
    end

    assert_redirected_to entity_path(assigns(:entity))
  end

  test "should show entity" do
    get :show, id: @entity
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @entity
    assert_response :success
  end

  test "should update entity" do
    patch :update, id: @entity, entity: { address: @entity.address, change_address: @entity.change_address, city: @entity.city, company: @entity.company, date_created: @entity.date_created, entity_type_id: @entity.entity_type_id, first_name: @entity.first_name, last_name: @entity.last_name, mi: @entity.mi, occupation_org: @entity.occupation_org, prefix_id: @entity.prefix_id, secondary_address: @entity.secondary_address, state_id: @entity.state_id, suffix: @entity.suffix, suite: @entity.suite, zip_code: @entity.zip_code }
    assert_redirected_to entity_path(assigns(:entity))
  end

  test "should destroy entity" do
    assert_difference('Entity.count', -1) do
      delete :destroy, id: @entity
    end

    assert_redirected_to entities_path
  end
end
