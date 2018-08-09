class CreateContacts < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
      t.text :pais
      t.text :nombre
      t.text :cargo
      t.text :correo

      t.timestamps null: false
    end
  end
end
