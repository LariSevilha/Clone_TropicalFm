class AddImageToFotoAbout < ActiveRecord::Migration[5.0]
  def change
    add_column :foto_abouts, :image, :string
  end
end
