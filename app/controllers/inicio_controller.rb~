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

  def articulos
    @anios_art = Article.pluck(:anio).uniq.sort_by{|n| -n}
  end

  def revistas
    @anios_rev = Magazine.where(especial: false).pluck(:anio).uniq.sort_by{|n| -n}
    @special_rev = Magazine.where(especial: true).order(created_at: :desc)
    if @special_rev.size > 0
      @anios_rev.insert(0,"especiales")
    end
  end
end
