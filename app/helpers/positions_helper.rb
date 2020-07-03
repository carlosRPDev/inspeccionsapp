module PositionsHelper

  def form_title_position
    @position.new_record? ? "Agregar Cargo" : "Editar Cargo"
  end

end
