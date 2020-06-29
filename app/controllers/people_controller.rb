class PeopleController < ApplicationController

  def index
    @person = Person.all
  end

  def new
    @person = Person.new
  end

end
