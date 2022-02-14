class CreateFotoAbouts < ActiveRecord::Migration[5.0]
  def change
    create_table :foto_abouts do |t|

      t.timestamps
    end
  end
end
