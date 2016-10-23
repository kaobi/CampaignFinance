require 'test_helper'

class ReportsControllerTest < ActionController::TestCase
  setup do
    @report = reports(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:reports)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create report" do
    assert_difference('Report.count') do
      post :create, report: { campaign_year: @report.campaign_year, file_name: @report.file_name, filer_id: @report.filer_id, on_time: @report.on_time, origin: @report.origin, report_type_id: @report.report_type_id, signature: @report.signature, submit_date: @report.submit_date, upload_type: @report.upload_type, validity: @report.validity }
    end

    assert_redirected_to report_path(assigns(:report))
  end

  test "should show report" do
    get :show, id: @report
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @report
    assert_response :success
  end

  test "should update report" do
    patch :update, id: @report, report: { campaign_year: @report.campaign_year, file_name: @report.file_name, filer_id: @report.filer_id, on_time: @report.on_time, origin: @report.origin, report_type_id: @report.report_type_id, signature: @report.signature, submit_date: @report.submit_date, upload_type: @report.upload_type, validity: @report.validity }
    assert_redirected_to report_path(assigns(:report))
  end

  test "should destroy report" do
    assert_difference('Report.count', -1) do
      delete :destroy, id: @report
    end

    assert_redirected_to reports_path
  end
end
