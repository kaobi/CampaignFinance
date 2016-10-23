require 'test_helper'

class CoverSheetsControllerTest < ActionController::TestCase
  setup do
    @cover_sheet = cover_sheets(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:cover_sheets)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create cover_sheet" do
    assert_difference('CoverSheet.count') do
      post :create, cover_sheet: { candidate_id: @cover_sheet.candidate_id, created_date: @cover_sheet.created_date, election_date: @cover_sheet.election_date, election_type_id: @cover_sheet.election_type_id, officeheld_id: @cover_sheet.officeheld_id, offices_sought_id: @cover_sheet.offices_sought_id, period_begin: @cover_sheet.period_begin, period_end: @cover_sheet.period_end, report_id: @cover_sheet.report_id, treasurer_id: @cover_sheet.treasurer_id }
    end

    assert_redirected_to cover_sheet_path(assigns(:cover_sheet))
  end

  test "should show cover_sheet" do
    get :show, id: @cover_sheet
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @cover_sheet
    assert_response :success
  end

  test "should update cover_sheet" do
    patch :update, id: @cover_sheet, cover_sheet: { candidate_id: @cover_sheet.candidate_id, created_date: @cover_sheet.created_date, election_date: @cover_sheet.election_date, election_type_id: @cover_sheet.election_type_id, officeheld_id: @cover_sheet.officeheld_id, offices_sought_id: @cover_sheet.offices_sought_id, period_begin: @cover_sheet.period_begin, period_end: @cover_sheet.period_end, report_id: @cover_sheet.report_id, treasurer_id: @cover_sheet.treasurer_id }
    assert_redirected_to cover_sheet_path(assigns(:cover_sheet))
  end

  test "should destroy cover_sheet" do
    assert_difference('CoverSheet.count', -1) do
      delete :destroy, id: @cover_sheet
    end

    assert_redirected_to cover_sheets_path
  end
end
