class AddLinkToTesis < ActiveRecord::Migration
  def change
    add_column :teses, :link, :text
  end
end
