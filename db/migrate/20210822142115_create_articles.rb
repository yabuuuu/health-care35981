class CreateArticles < ActiveRecord::Migration[6.0]
  def change
    create_table :articles do |t|
      t.string   :symptom,          null: false
      t.text     :text,             null: false
      t.text     :improvement
      
      t.timestamps
    end
  end
end
