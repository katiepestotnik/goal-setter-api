class AddUpdateIdToUsers < ActiveRecord::Migration[6.1]
  def change
    def change
      add_column :users, :update_id, :integer
    end
  end
end
