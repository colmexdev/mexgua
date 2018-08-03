class Book < ActiveRecord::Base

  has_attached_file :imagen, :styles => {},
                    :url => "/assets/libros/:basename-:style.:extension",
                    :path => ":rails_root/public/assets/libros/:basename-:style.:extension",
                    :default_url => "/vacio.png"

  validates_presence_of :ficha
  validates :anio, presence: true, numericality: {greater_than: 1999, only_integer: true}
  #validates_attachment_presence :imagen
  validates_attachment_content_type :imagen, content_type: /\Aimage/

end
