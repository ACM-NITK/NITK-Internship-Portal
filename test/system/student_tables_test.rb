require "application_system_test_case"

class StudentTablesTest < ApplicationSystemTestCase
  setup do
    @student_table = student_tables(:one)
  end

  test "visiting the index" do
    visit student_tables_url
    assert_selector "h1", text: "Student Tables"
  end

  test "creating a Student table" do
    visit student_tables_url
    click_on "New Student Table"

    fill_in "Branch", with: @student_table.branch
    fill_in "Cgpa", with: @student_table.cgpa
    fill_in "Contactnumber", with: @student_table.contactNumber
    fill_in "Gender", with: @student_table.gender
    fill_in "Name", with: @student_table.name
    fill_in "Permanentaddress", with: @student_table.permanentAddress
    fill_in "Semester", with: @student_table.semester
    fill_in "User", with: @student_table.user_id
    click_on "Create Student table"

    assert_text "Student table was successfully created"
    click_on "Back"
  end

  test "updating a Student table" do
    visit student_tables_url
    click_on "Edit", match: :first

    fill_in "Branch", with: @student_table.branch
    fill_in "Cgpa", with: @student_table.cgpa
    fill_in "Contactnumber", with: @student_table.contactNumber
    fill_in "Gender", with: @student_table.gender
    fill_in "Name", with: @student_table.name
    fill_in "Permanentaddress", with: @student_table.permanentAddress
    fill_in "Semester", with: @student_table.semester
    fill_in "User", with: @student_table.user_id
    click_on "Update Student table"

    assert_text "Student table was successfully updated"
    click_on "Back"
  end

  test "destroying a Student table" do
    visit student_tables_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Student table was successfully destroyed"
  end
end
