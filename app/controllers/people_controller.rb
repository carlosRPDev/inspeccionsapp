class PeopleController < ApplicationController

  def index
    @person = Person.all
  end

  def new
    @person = Person.new
  end

  def create
    @person = Person.create(people_params)
  end

  def edit
    @person = Person.find(params[:id])
  end

  def update
    @person = Person.update(params[:id], people_params)
  end

  def destroy
    @person = Person.find(params[:id])
    @person.destroy
      # bug no elimina el asesor por la relacion entre visits y person_id
    redirect_to people_path, notice: "La persona fue eliminado con exito!"
  end

  private
  def people_params
    params.require(:person).permit(:cedula, :name, :last_name, :position_id)
  end

end
