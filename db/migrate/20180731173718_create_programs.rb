class CreatePrograms < ActiveRecord::Migration
  def change
    create_table :programs do |t|
      t.text :titulo
      t.date :fecha
      t.text :autor
      t.text :abstract
      t.text :link_vid

      t.timestamps null: false
    end
  end
end
