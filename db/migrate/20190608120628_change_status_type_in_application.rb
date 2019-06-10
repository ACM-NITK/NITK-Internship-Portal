class ChangeStatusTypeInApplication < ActiveRecord::Migration[5.2]
  def up
    change_column :applications, :status, :integer
  end

  def down
    change_column :applications, :status, :string
  end
end
