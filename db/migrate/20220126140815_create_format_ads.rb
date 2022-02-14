class CreateFormatAds < ActiveRecord::Migration[5.0]
  def change
    create_table :format_ads do |t|
      t.string :title
      t.integer :width
      t.integer :height
      t.integer :position

      t.timestamps
    end
  end
end
