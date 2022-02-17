class CreateAlbums < ActiveRecord::Migration[5.0]
  def change
    create_table :albums do |t|
      t.string :slug
      t.string :name
      t.boolean :cover
      t.string :description

      t.timestamps
    end
  end
end
