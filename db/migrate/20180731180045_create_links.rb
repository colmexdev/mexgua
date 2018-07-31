class CreateLinks < ActiveRecord::Migration
  def change
    create_table :links do |t|
      t.text :categoria
      t.text :info
      t.text :link

      t.timestamps null: false
    end
  end
end
