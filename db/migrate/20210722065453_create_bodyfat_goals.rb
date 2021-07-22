class CreateBodyfatGoals < ActiveRecord::Migration[6.0]
  def change
    create_table :bodyfat_goals do |t|
      t.integer    :goal,          null: false
      t.date       :period
      t.references :user,          foreign_key: true

      t.timestamps
    end
  end
end
