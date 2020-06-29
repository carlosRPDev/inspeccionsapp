module PeopleHelper

  def form_title_person
    @person.new_record? ? "Agregar asesor(a)" : "Editar asesor(a)"
  end

end
