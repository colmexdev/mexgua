class Ad < ActiveRecord::Base

  has_attached_file :imagen, :styles => {},
                    :url => "/assets/ad-pics/:basename-:style.:extension",
                    :path => ":rails_root/public/assets/ad-pics/:basename-:style.:extension"

  validates_presence_of :titulo
  validates_presence_of :fecha
  validates_presence_of :texto
  validates_presence_of :fecha_pub
  validates_presence_of :link
  validates_attachment_presence :imagen
  validates_attachment_content_type :imagen, content_type: /\Aimage/

end
