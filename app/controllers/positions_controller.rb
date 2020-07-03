class PositionsController < ApplicationController

  def index
    @position = Position.all
  end
end
