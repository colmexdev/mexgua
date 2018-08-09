class Contact < ActiveRecord::Base

  validates_presence_of :pais
  validates_presence_of :nombre
  validates_presence_of :correo

end
