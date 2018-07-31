class CreateStats < ActiveRecord::Migration
  def change
    create_table :stats do |t|
      t.integer :anio
      t.text :ficha
      t.text :link

      t.timestamps null: false
    end
  end
end
