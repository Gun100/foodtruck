class CreateTrucks < ActiveRecord::Migration[5.1]
  def change
    create_table :trucks do |t|
      t.string :truck_name
      t.belongs_to :user, foreign_key: true

      t.timestamps
    end
  end
end
