class AddUserIdToUpdates < ActiveRecord::Migration[6.1]
  def change
    add_column :updates, :user_id, :integer
  end
end
