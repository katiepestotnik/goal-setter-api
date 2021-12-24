class CreateGoals < ActiveRecord::Migration[6.1]
  def change
    create_table :goals do |t|
      t.string :name
      t.date :start_date
      t.date :goal_completion_date
      t.text :goal_description
      t.timestamps
    end
  end
end
