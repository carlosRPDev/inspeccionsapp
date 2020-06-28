class VisitsController < ApplicationController

  def index
    @visits = Visit.all
  end

  def new
    @visit = Visit.new
  end

  def create
    @visit = Visit.new(visit_params)
    if @visit.save
      redirect_to visits_path, notice: "La fecha se agrego con exito!"
    else
      render :new
    end
  end

  def edit
    @visit = Visit.find(params[:id])
  end

  def update
    @visit = Visit.find(params[:id])
    if @visit.update(visit_params)
      redirect_to visits_path, notice: "La fecha fue editada con exito!"
    else
      render :edit
    end
  end

  private
  def visit_params
    params.require(:visit).permit(:date)
  end

end
