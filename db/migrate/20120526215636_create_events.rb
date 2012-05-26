class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.integer :creator_id
      t.string :name
      t.datetime :time
      t.integer :place_id

      t.timestamps
    end
  end
end
