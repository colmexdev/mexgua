class CreateAds < ActiveRecord::Migration
  def change
    create_table :ads do |t|
      t.text :titulo
      t.text :texto
      t.text :link
      t.date :fecha
      t.date :fecha_pub
      t.attachment :imagen

      t.timestamps null: false
    end
  end
end
