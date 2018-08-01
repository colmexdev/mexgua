class AddEspecialToTeses < ActiveRecord::Migration
  def change
    add_column :teses, :especial, :boolean
  end
end
