class CreateStudentTables < ActiveRecord::Migration[5.2]
  def change
    create_table :student_tables do |t|
      t.string :branch
      t.string :name
      t.string :contactNumber
      t.boolean :gender
      t.float :cgpa
      t.text :permanentAddress
      t.integer :semester
      t.integer :user_id

      t.timestamps
    end
  end
end
