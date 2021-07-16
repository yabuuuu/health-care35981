class CreateWeights < ActiveRecord::Migration[6.0]
  def change
    create_table :weights do |t|
      t.date   :start_time,           null: false
      t.integer    :weight,           null: false
      t.references :user,          foreign_key: true

      t.timestamps
    end
    add_index :weights, :start_time, unique: true
  end
end
