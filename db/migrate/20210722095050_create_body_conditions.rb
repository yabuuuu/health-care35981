class CreateBodyConditions < ActiveRecord::Migration[6.0]
  def change
    create_table :body_conditions do |t|
      t.integer    :data_content_id,  null: false
      t.date       :start_time,       null: false
      t.integer    :body_data,        null: false
      t.references :user,             foreign_key: true

      t.timestamps
    end
  end
end
