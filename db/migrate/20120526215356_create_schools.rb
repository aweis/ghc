class CreateSchools < ActiveRecord::Migration
  def change
    create_table :schools do |t|
      t.string :name
      t.float :lat
      t.float :lon
      t.string :address

      t.timestamps
    end
  end
end
