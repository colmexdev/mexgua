class CreateForums < ActiveRecord::Migration
  def change
    create_table :forums do |t|
      t.text :titulo
      t.date :fecha
      t.text :autor
      t.text :titulo_evento
      t.text :abstract
      t.text :link_vids
      t.text :tit_vids

      t.timestamps null: false
    end
  end
end
