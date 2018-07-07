class CreateMenus < ActiveRecord::Migration[5.1]
  def change
    create_table :menus do |t|
      t.string :menu_name
      t.integer :price
      t.belongs_to :truck, foreign_key: true

      t.timestamps
    end
  end
end
