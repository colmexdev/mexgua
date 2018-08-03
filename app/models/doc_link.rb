class DocLink < ActiveRecord::Base

  has_attached_file :documento,
                    :url => "/assets/documentos/:basename.:extension",
                    :path => ":rails_root/public/assets/documentos/:basename.:extension"

  validates_presence_of :ficha
  validates_presence_of :link
  validates_attachment_content_type :archivo, :content_type => ['application/pdf']
end
