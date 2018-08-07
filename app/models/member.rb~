class Member < ActiveRecord::Base

  has_attached_file :imagen, :styles => {},
                    :url => "/assets/members/:basename-:style.:extension",
                    :path => ":rails_root/public/assets/members/:basename-:style.:extension",
                    :default_url => "/vacio.png"

  validates_presence_of :nombre
  validates_presence_of :semblanza
  validates_presence_of :categoria
  validates_presence_of :pais
  validates_attachment_content_type :imagen, content_type: /\Aimage/

end
