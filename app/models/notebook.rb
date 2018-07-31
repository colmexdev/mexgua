class Notebook < ActiveRecord::Base

  validates_presence_of :ficha
  validates_presence_of :link

end
