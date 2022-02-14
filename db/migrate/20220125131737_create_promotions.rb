class CreatePromotions < ActiveRecord::Migration[5.0]
  def change
    create_table :promotions do |t|
      t.string :title
      t.string :image
      t.text :regulation
      t.datetime :start_date
      t.datetime :finish_date
      t.boolean :status
      t.boolean :form
      t.string :slug

      t.timestamps
    end
  end
end
