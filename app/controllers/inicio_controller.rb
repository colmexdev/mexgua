class InicioController < ApplicationController

  def inicio
    @ads = Ad.where("fecha < ? ", Date.today)
  end

end
