class RemoveInternshipIdFromAnswer < ActiveRecord::Migration[5.2]
  def change
    remove_column :answers, :internship_id, :integer
  end
end
