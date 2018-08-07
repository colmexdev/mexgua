class CreateMembers < ActiveRecord::Migration
  def change
    create_table :members do |t|
      t.text :categoria
      t.text :pais
      t.text :nombre
      t.text :semblanza
      t.attachment :imagen

      t.timestamps null: false
    end
  end
end
