class CreateAbouts < ActiveRecord::Migration[5.0]
  def change
    create_table :abouts do |t|
      t.string :description
      t.string :image
      t.string :title
      

      t.timestamps
    end
  end
end
