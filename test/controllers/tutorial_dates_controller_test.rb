require 'test_helper'

class TutorialDatesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @tutorial_date = tutorial_dates(:one)
  end

  test "should get index" do
    get tutorial_dates_url
    assert_response :success
  end

  test "should get new" do
    get new_tutorial_date_url
    assert_response :success
  end

  test "should create tutorial_date" do
    assert_difference('TutorialDate.count') do
      post tutorial_dates_url, params: { tutorial_date: { Date: @tutorial_date.Date, IdShedule: @tutorial_date.IdShedule, StudentRegister: @tutorial_date.StudentRegister, Topic: @tutorial_date.Topic } }
    end

    assert_redirected_to tutorial_date_url(TutorialDate.last)
  end

  test "should show tutorial_date" do
    get tutorial_date_url(@tutorial_date)
    assert_response :success
  end

  test "should get edit" do
    get edit_tutorial_date_url(@tutorial_date)
    assert_response :success
  end

  test "should update tutorial_date" do
    patch tutorial_date_url(@tutorial_date), params: { tutorial_date: { Date: @tutorial_date.Date, IdShedule: @tutorial_date.IdShedule, StudentRegister: @tutorial_date.StudentRegister, Topic: @tutorial_date.Topic } }
    assert_redirected_to tutorial_date_url(@tutorial_date)
  end

  test "should destroy tutorial_date" do
    assert_difference('TutorialDate.count', -1) do
      delete tutorial_date_url(@tutorial_date)
    end

    assert_redirected_to tutorial_dates_url
  end
end
