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
    @anios_rev = Magazine.where("especial is null or especial = ?",false).pluck(:anio).uniq.sort_by{|n| -n}
    @special_rev = Magazine.where("especial is not null").order(created_at: :desc)
    if @special_rev.size > 0
      @anios_rev.insert(0,"especiales")
    end
  end

  def tesis
    @anios_tesis = Tesis.pluck(:anio).uniq.sort_by{|n| -n}
  end

  def boletines
    @anios_bol = Stat.pluck(:anio).uniq.sort_by{|n| -n}
  end

  def comunicados
    @comunicados = Notice.order(created_at: :desc)
  end

  def cuadernos
    @cuadernos = Notebook.order(created_at: :asc)
  end

  def capsulas
    @capsulas = Capsule.order(created_at: :desc)
  end

  def documentales
    @documentales = Documental.order(created_at: :desc)
  end

  def programas
    @programas = Program.order(created_at: :desc)
  end

  def conferencias
    @conferencias = Forum.order(created_at: :desc)
  end

  def enlaces
    @enlaces = Link.order(created_at: :desc)
  end

  def miembros
    @miembros = Member.order(created_at: :desc)
  end
end
