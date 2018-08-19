require "application_system_test_case"

class TeachersTest < ApplicationSystemTestCase
  setup do
    @teacher = teachers(:one)
  end

  test "visiting the index" do
    visit teachers_url
    assert_selector "h1", text: "Teachers"
  end

  test "creating a Teacher" do
    visit teachers_url
    click_on "New Teacher"

    fill_in "Cellphone", with: @teacher.Cellphone
    fill_in "Email", with: @teacher.Email
    fill_in "Employeenumber", with: @teacher.EmployeeNumber
    fill_in "Isadmin", with: @teacher.IsAdmin
    fill_in "Lastname", with: @teacher.LastName
    fill_in "Name", with: @teacher.Name
    fill_in "Secondlastname", with: @teacher.SecondLastName
    fill_in "Teacheruser", with: @teacher.TeacherUser
    click_on "Create Teacher"

    assert_text "Teacher was successfully created"
    click_on "Back"
  end

  test "updating a Teacher" do
    visit teachers_url
    click_on "Edit", match: :first

    fill_in "Cellphone", with: @teacher.Cellphone
    fill_in "Email", with: @teacher.Email
    fill_in "Employeenumber", with: @teacher.EmployeeNumber
    fill_in "Isadmin", with: @teacher.IsAdmin
    fill_in "Lastname", with: @teacher.LastName
    fill_in "Name", with: @teacher.Name
    fill_in "Secondlastname", with: @teacher.SecondLastName
    fill_in "Teacheruser", with: @teacher.TeacherUser
    click_on "Update Teacher"

    assert_text "Teacher was successfully updated"
    click_on "Back"
  end

  test "destroying a Teacher" do
    visit teachers_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Teacher was successfully destroyed"
  end
end
