class AddEspecialToStats < ActiveRecord::Migration
  def change
    add_column :stats, :especial, :boolean
  end
end
