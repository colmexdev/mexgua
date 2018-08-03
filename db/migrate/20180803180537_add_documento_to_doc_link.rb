class AddDocumentoToDocLink < ActiveRecord::Migration
  def change
    add_attachment :doc_links, :documento
    remove_column :doc_links, :link
  end
end
