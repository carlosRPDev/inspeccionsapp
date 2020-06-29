module VisitsHelper

  def form_title
    @visit.new_record? ? "Agregar Fecha" : "Editar Fecha"
  end

end
