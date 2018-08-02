class AddVideosToForums < ActiveRecord::Migration
  def change
    add_column :forums, :link_vids, :text, array: true
    add_column :forums, :tit_vids, :text, array: true
  end
end
