require 'test_helper'

class StudentTablesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @student_table = student_tables(:one)
  end

  test "should get index" do
    get student_tables_url
    assert_response :success
  end

  test "should get new" do
    get new_student_table_url
    assert_response :success
  end

  test "should create student_table" do
    assert_difference('StudentTable.count') do
      post student_tables_url, params: { student_table: { branch: @student_table.branch, cgpa: @student_table.cgpa, contactNumber: @student_table.contactNumber, gender: @student_table.gender, name: @student_table.name, permanentAddress: @student_table.permanentAddress, semester: @student_table.semester, user_id: @student_table.user_id } }
    end

    assert_redirected_to student_table_url(StudentTable.last)
  end

  test "should show student_table" do
    get student_table_url(@student_table)
    assert_response :success
  end

  test "should get edit" do
    get edit_student_table_url(@student_table)
    assert_response :success
  end

  test "should update student_table" do
    patch student_table_url(@student_table), params: { student_table: { branch: @student_table.branch, cgpa: @student_table.cgpa, contactNumber: @student_table.contactNumber, gender: @student_table.gender, name: @student_table.name, permanentAddress: @student_table.permanentAddress, semester: @student_table.semester, user_id: @student_table.user_id } }
    assert_redirected_to student_table_url(@student_table)
  end

  test "should destroy student_table" do
    assert_difference('StudentTable.count', -1) do
      delete student_table_url(@student_table)
    end

    assert_redirected_to student_tables_url
  end
end
