class VisitsController < ApplicationController

  def index
    @visits = Visit.all
  end

  def new
    @visit = Visit.new
  end

  def create
    @visit = Visit.create(visit_params)
  end

  def edit
    @visit = Visit.find(params[:id])
  end

  def update
    @visit = Visit.update(params[:id], visit_params)
  end

  def destroy
    @visit = Visit.find(params[:id])
    @visit.destroy

    redirect_to visits_path, notice: "La visita fue eliminada con exito!"
  end

  private
  def visit_params
    params.require(:visit).permit(:date, :person_id)
  end

end
