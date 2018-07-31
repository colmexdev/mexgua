class CreateMagazines < ActiveRecord::Migration
  def change
    create_table :magazines do |t|
      t.integer :anio
      t.text :ficha
      t.text :link

      t.timestamps null: false
    end
  end
end
