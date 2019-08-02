class CreateLinkCategories < ActiveRecord::Migration[5.2]
  def change
    create_table :link_categories do |t|
      t.string :name
      t.integer :order
      t.references :menu, foreign_key: true, index: true

      t.timestamps
    end
  end
end
