class CreateQuestions < ActiveRecord::Migration[5.2]
  def change
    create_table :questions do |t|
      t.text :ques
      t.integer :internship_id

      t.timestamps
    end
  end
end
