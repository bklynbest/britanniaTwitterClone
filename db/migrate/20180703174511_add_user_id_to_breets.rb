class AddUserIdToBreets < ActiveRecord::Migration[5.0]
  def change
    add_column :breets, :user_id, :integer
  end
end
