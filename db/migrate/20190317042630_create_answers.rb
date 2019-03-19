class CreateAnswers < ActiveRecord::Migration[5.2]
  def change
    create_table :answers do |t|
      t.text :ans
      t.integer :internship_id
      t.integer :user_id

      t.timestamps
    end
  end
end
