class Magazine < ActiveRecord::Base
  before_save :check_especial

  validates_presence_of :ficha
  validates :anio, presence: true, numericality: {greater_than: 1999, only_integer: true}
  validates_presence_of :link

  def check_especial
    @especial = nil if params[:especial].nil?
  end
end
