class CreateNotebooks < ActiveRecord::Migration
  def change
    create_table :notebooks do |t|
      t.text :ficha
      t.text :link

      t.timestamps null: false
    end
  end
end
