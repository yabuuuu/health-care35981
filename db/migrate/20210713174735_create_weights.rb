class CreateWeights < ActiveRecord::Migration[6.0]
  def change
    create_table :weights do |t|
      t.date    :day,              null: false
      t.integer :weight,           null: false
      t.references :user,          foreign_key: true

      t.timestamps
    end
  end
end
