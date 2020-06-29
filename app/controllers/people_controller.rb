class PeopleController < ApplicationController

  def index
    @person = Person.all
  end

  def new
    @person = Person.new
  end

  def create
    @person = Person.new(people_params)
    if @person.save
      redirect_to people_path, notice: "El asesor(@) fue ingresado con exito!"
    else
      render :new
    end
  end

  private
  def people_params
    params.require(:person).permit(:cedula, :name, :last_name)
  end

end
