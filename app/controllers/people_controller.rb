class PeopleController < ApplicationController

  def index
    @person = Person.all
  end

end
