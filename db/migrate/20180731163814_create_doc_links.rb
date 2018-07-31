class CreateDocLinks < ActiveRecord::Migration
  def change
    create_table :doc_links do |t|
      t.text :ficha
      t.text :link

      t.timestamps null: false
    end
  end
end
