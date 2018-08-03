class AddDocumentoToDocLink < ActiveRecord::Migration
  def change
    add_column :doc_links, :documento, :attachment
    remove_column :doc_links, :link
  end
end
