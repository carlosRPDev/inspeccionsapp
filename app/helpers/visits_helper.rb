module VisitsHelper

  def form_title_visits
    @visit.new_record? ? "Agregar Fecha" : "Editar Fecha"
  end

end
