class CreateAlbums < ActiveRecord::Migration[5.0]
  def change
    create_table :albums do |t|
      t.string :name
      t.string :description
      t.datetime :publish_date
      t.string :slug
      t.boolean :status, default: false
      
      t.timestamps
    end
  end
end
