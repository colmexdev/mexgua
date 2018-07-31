class Tesis < ActiveRecord::Base

  validates_presence_of :ficha
  validates :anio, presence: true, numericality: {greater_than: 2000, only_integer: true}

end
