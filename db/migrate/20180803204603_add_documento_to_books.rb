class AddDocumentoToBooks < ActiveRecord::Migration
  def change
    add_attachment :books, :documento
  end
end
