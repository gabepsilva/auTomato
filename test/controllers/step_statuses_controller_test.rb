require 'test_helper'

class StepStatusesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @step_status = step_statuses(:one)
  end

  test "should get index" do
    get step_statuses_url
    assert_response :success
  end

  test "should get new" do
    get new_step_status_url
    assert_response :success
  end

  test "should create step_status" do
    assert_difference('StepStatus.count') do
      post step_statuses_url, params: { step_status: { name: @step_status.name } }
    end

    assert_redirected_to step_status_url(StepStatus.last)
  end

  test "should show step_status" do
    get step_status_url(@step_status)
    assert_response :success
  end

  test "should get edit" do
    get edit_step_status_url(@step_status)
    assert_response :success
  end

  test "should update step_status" do
    patch step_status_url(@step_status), params: { step_status: { name: @step_status.name } }
    assert_redirected_to step_status_url(@step_status)
  end

  test "should destroy step_status" do
    assert_difference('StepStatus.count', -1) do
      delete step_status_url(@step_status)
    end

    assert_redirected_to step_statuses_url
  end
end
