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

  private
  def visit_params
    params.require(:visit).permit(:date)
  end

end
