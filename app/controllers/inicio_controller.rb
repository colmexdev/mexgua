class InicioController < ApplicationController

  def inicio
    #@ads = Ad.where("fecha < ? ", Date.today)
    @ads = Ad.all
  end

  def sobre
  end

  def antecedentes
  end

  def propuestas
  end

  def acciones
  end

  def flujos
  end

  def principios
  end

  def documentos
    @docs = DocLink.all.order(created_at: :desc)
  end

  def libros
    @anios_libro = Book.pluck(:anio).uniq.sort_by{|n| -n}
  end

end
