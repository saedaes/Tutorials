require "application_system_test_case"

class GroupMeetingsTest < ApplicationSystemTestCase
  setup do
    @group_meeting = group_meetings(:one)
  end

  test "visiting the index" do
    visit group_meetings_url
    assert_selector "h1", text: "Group Meetings"
  end

  test "creating a Group meeting" do
    visit group_meetings_url
    click_on "New Group Meeting"

    fill_in "Extrastudentregistration", with: @group_meeting.ExtraStudentRegistration
    fill_in "Idtutorialdate", with: @group_meeting.IdTutorialDate
    click_on "Create Group meeting"

    assert_text "Group meeting was successfully created"
    click_on "Back"
  end

  test "updating a Group meeting" do
    visit group_meetings_url
    click_on "Edit", match: :first

    fill_in "Extrastudentregistration", with: @group_meeting.ExtraStudentRegistration
    fill_in "Idtutorialdate", with: @group_meeting.IdTutorialDate
    click_on "Update Group meeting"

    assert_text "Group meeting was successfully updated"
    click_on "Back"
  end

  test "destroying a Group meeting" do
    visit group_meetings_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Group meeting was successfully destroyed"
  end
end
