class PositionsController < ApplicationController

  def index
    @position = Position.all
  end

  def new
    @position = Position.new
  end

  def create
    @position = Position.create(position_params)
  end

  def edit
    @position = Position.find(params[:id])
  end

  def update
    @position = Position.update(params[:id], position_params)
  end

  def destroy
    @position = Position.find(params[:id])
    @position.destroy

    redirect_to positions_path, notice: "El tipo de cargo fue eliminado con exito!"
  end

  private
  def position_params
    params.require(:position).permit(:description)
  end

end
