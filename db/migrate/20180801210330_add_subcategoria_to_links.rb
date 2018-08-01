class AddSubcategoriaToLinks < ActiveRecord::Migration
  def change
    add_column :links, :subcategoria, :text
  end
end
