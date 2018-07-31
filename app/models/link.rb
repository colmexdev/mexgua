class Link < ActiveRecord::Base

  validates_presence_of :categoria
  validates_presence_of :info
  validates_presence_of :link

end
