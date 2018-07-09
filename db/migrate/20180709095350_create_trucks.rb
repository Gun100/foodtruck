class CreateTrucks < ActiveRecord::Migration[5.1]
  def change
    create_table :trucks do |t|
      t.string :truck_name
      t.float :truck_x
      t.float :truck_y
      t.belongs_to :user
      
      t.timestamps
    end
  end
end
