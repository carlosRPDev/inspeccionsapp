class PositionsController < ApplicationController

  def index
    @position = Position.all
  end

  def new
    @position = Position.new
  end

  def create
    @position = Position.new(position_params)
    if @position.save
      redirect_to positions_path, notice: "El tipo de cargo ha sido ingresado con exito!"
    else
      render :new
    end
  end

  def edit
    @position = Position.find(params(:id))
  end

  def update
    @position = Position.find(params[:id])
    if @position.update(position_params)
      redirect_to positions_path, notice: "El tipo de cargo fue editado con exito!"
    else
      render :edit
    end
  end

  private
  def position_params
    params.require(:position).permit(:description)
  end

end
