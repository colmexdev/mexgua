class CreateNotices < ActiveRecord::Migration
  def change
    create_table :notices do |t|
      t.text :ficha
      t.text :link

      t.timestamps null: false
    end
  end
end
