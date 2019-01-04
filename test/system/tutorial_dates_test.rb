require "application_system_test_case"

class TutorialDatesTest < ApplicationSystemTestCase
  setup do
    @tutorial_date = tutorial_dates(:one)
  end

  test "visiting the index" do
    visit tutorial_dates_url
    assert_selector "h1", text: "Tutorial Dates"
  end

  test "creating a Tutorial date" do
    visit tutorial_dates_url
    click_on "New Tutorial Date"

    fill_in "Date", with: @tutorial_date.Date
    fill_in "Idshedule", with: @tutorial_date.IdShedule
    fill_in "Studentregister", with: @tutorial_date.StudentRegister
    fill_in "Topic", with: @tutorial_date.Topic
    click_on "Create Tutorial date"

    assert_text "Tutorial date was successfully created"
    click_on "Back"
  end

  test "updating a Tutorial date" do
    visit tutorial_dates_url
    click_on "Edit", match: :first

    fill_in "Date", with: @tutorial_date.Date
    fill_in "Idshedule", with: @tutorial_date.IdShedule
    fill_in "Studentregister", with: @tutorial_date.StudentRegister
    fill_in "Topic", with: @tutorial_date.Topic
    click_on "Update Tutorial date"

    assert_text "Tutorial date was successfully updated"
    click_on "Back"
  end

  test "destroying a Tutorial date" do
    visit tutorial_dates_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Tutorial date was successfully destroyed"
  end
end
