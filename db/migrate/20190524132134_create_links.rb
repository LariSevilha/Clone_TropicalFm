class CreateLinks < ActiveRecord::Migration[5.0]
  def change
    create_table :links do |t|
      t.string :name
      t.string :url
      t.string :image
      t.boolean :internal_link, default: false
      t.references :link_category, foreign_key: true, index: true

      t.timestamps
    end
  end
end
