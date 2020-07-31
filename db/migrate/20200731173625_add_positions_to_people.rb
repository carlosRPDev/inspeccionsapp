class AddPositionsToPeople < ActiveRecord::Migration[5.0]
  def change
    add_reference :people, :position, foreign_key: true
  end
end
