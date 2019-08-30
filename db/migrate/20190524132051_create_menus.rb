class CreateMenus < ActiveRecord::Migration[5.0]
  def change
    create_table :menus do |t|
      t.string :name
      t.integer :type_menu
      t.integer :position_menu     

      t.timestamps
    end
  end
end
