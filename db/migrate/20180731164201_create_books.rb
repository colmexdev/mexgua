class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.integer :anio
      t.attachment :imagen
      t.text :ficha
      t.text :link

      t.timestamps null: false
    end
  end
end
