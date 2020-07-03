class PositionsController < ApplicationController

  def index
    @position = Position.all
  end

  def new
    @position = Position.new
  end
end
