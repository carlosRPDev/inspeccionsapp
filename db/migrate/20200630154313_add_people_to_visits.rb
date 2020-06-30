class AddPeopleToVisits < ActiveRecord::Migration[5.0]
  def change
    add_reference :visits, :person, foreign_key: true
  end
end
