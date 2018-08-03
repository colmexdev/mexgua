class InicioController < ApplicationController

  def inicio
    #@ads = Ad.where("fecha < ? ", Date.today)
    @ads = Ad.all
  end

  def sobre

  end

end
