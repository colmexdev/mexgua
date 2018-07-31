class Capsule < ActiveRecord::Base

  validates_presence_of :titulo
  validates_presence_of :abstract
  validates_presence_of :link_vid

end
