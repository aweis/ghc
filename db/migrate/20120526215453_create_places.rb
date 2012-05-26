class CreatePlaces < ActiveRecord::Migration
  def change
    create_table :places do |t|
      t.string :name
      t.float :lat
      t.float :lon
      t.integer :school_id

      t.timestamps
    end
  end
end
