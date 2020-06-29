class CreatePeople < ActiveRecord::Migration[5.0]
  def change
    create_table :people do |t|
      t.string :cedula
      t.string :name, limit: 100
      t.string :last_name, limit: 100

      t.timestamps
    end
  end
end
