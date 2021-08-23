class CreateArticles < ActiveRecord::Migration[6.0]
  def change
    create_table :articles do |t|
      t.string   :article,          null: false
      t.text     :text,             null: false
      t.text     :improvement
      t.references :user,             foreign_key: true
      
      t.timestamps
    end
  end
end
