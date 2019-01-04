require "application_system_test_case"

class TeacherPlacesTest < ApplicationSystemTestCase
  setup do
    @teacher_place = teacher_places(:one)
  end

  test "visiting the index" do
    visit teacher_places_url
    assert_selector "h1", text: "Teacher Places"
  end

  test "creating a Teacher place" do
    visit teacher_places_url
    click_on "New Teacher Place"

    fill_in "Place", with: @teacher_place.place_id
    fill_in "Teacher", with: @teacher_place.teacher_id
    click_on "Create Teacher place"

    assert_text "Teacher place was successfully created"
    click_on "Back"
  end

  test "updating a Teacher place" do
    visit teacher_places_url
    click_on "Edit", match: :first

    fill_in "Place", with: @teacher_place.place_id
    fill_in "Teacher", with: @teacher_place.teacher_id
    click_on "Update Teacher place"

    assert_text "Teacher place was successfully updated"
    click_on "Back"
  end

  test "destroying a Teacher place" do
    visit teacher_places_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Teacher place was successfully destroyed"
  end
end
