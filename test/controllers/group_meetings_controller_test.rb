require 'test_helper'

class GroupMeetingsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @group_meeting = group_meetings(:one)
  end

  test "should get index" do
    get group_meetings_url
    assert_response :success
  end

  test "should get new" do
    get new_group_meeting_url
    assert_response :success
  end

  test "should create group_meeting" do
    assert_difference('GroupMeeting.count') do
      post group_meetings_url, params: { group_meeting: { ExtraStudentRegistration: @group_meeting.ExtraStudentRegistration, IdTutorialDate: @group_meeting.IdTutorialDate } }
    end

    assert_redirected_to group_meeting_url(GroupMeeting.last)
  end

  test "should show group_meeting" do
    get group_meeting_url(@group_meeting)
    assert_response :success
  end

  test "should get edit" do
    get edit_group_meeting_url(@group_meeting)
    assert_response :success
  end

  test "should update group_meeting" do
    patch group_meeting_url(@group_meeting), params: { group_meeting: { ExtraStudentRegistration: @group_meeting.ExtraStudentRegistration, IdTutorialDate: @group_meeting.IdTutorialDate } }
    assert_redirected_to group_meeting_url(@group_meeting)
  end

  test "should destroy group_meeting" do
    assert_difference('GroupMeeting.count', -1) do
      delete group_meeting_url(@group_meeting)
    end

    assert_redirected_to group_meetings_url
  end
end
