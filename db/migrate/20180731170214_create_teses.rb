class CreateTeses < ActiveRecord::Migration
  def change
    create_table :teses do |t|
      t.integer :anio
      t.text :ficha

      t.timestamps null: false
    end
  end
end
