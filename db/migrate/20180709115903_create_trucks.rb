class CreateTrucks < ActiveRecord::Migration[5.1]
  def change
    create_table :trucks do |t|
      t.string :truck_name
      t.integer :truck_x
      t.integer :truck_y
      t.belongs_to :user, foreign_key: true
      #t.belongs_to :user, index: {unique: true}, foreign_key: true
      

      t.timestamps
    end
  end
end
