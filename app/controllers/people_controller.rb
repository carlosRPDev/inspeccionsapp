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
      redirect_to people_path, notice: "El asesor(a) fue ingresado con exito!"
    else
      render :new
    end
  end

  def edit
    @person = Person.find(params[:id])
  end

  def update
    @person = Person.find(params[:id])
    if @person.update(people_params)
      redirect_to people_path, notice: "El asesor(a) fue editado con exito!"
    else
      render :edit
    end
  end

  def destroy
    @person = Person.find(params[:id])
    @person.destroy
      # bug no elimina el asesor por la relacion entre visits y person_id 
    redirect_to people_path, notice: "El asesor(a) fue eliminado con exito!"
  end

  private
  def people_params
    params.require(:person).permit(:cedula, :name, :last_name)
  end

end
