json.extract! student_table, :id, :branch, :name, :contactNumber, :gender, :cgpa, :permanentAddress, :semester, :user_id, :created_at, :updated_at
json.url student_table_url(student_table, format: :json)
