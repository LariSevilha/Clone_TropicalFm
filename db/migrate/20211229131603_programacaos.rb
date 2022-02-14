class Programacaos < ActiveRecord::Migration[5.0]
  def change
    create_table :programacaos do |t|
        t.string :name
        t.time :hour     
        t.boolean :status, default: true
        t.integer :day, default: 0
  
        t.timestamps
    end
  end
end