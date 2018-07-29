class CreatePlaces < ActiveRecord::Migration[5.2]
  def change
    create_table :places do |t|
      t.string :Name
      t.string :Location
      t.text :Description

      t.timestamps
    end
  end
end
