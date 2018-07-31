class CreateDocumentals < ActiveRecord::Migration
  def change
    create_table :documentals do |t|
      t.text :titulo
      t.date :fecha
      t.text :autor
      t.text :abstract
      t.text :link_vid
      t.text :tipo

      t.timestamps null: false
    end
  end
end
