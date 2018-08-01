class AddEspecialToMagazines < ActiveRecord::Migration
  def change
    add_column :magazines, :especial, :boolean
  end
end
