class CreateVideos < ActiveRecord::Migration[5.0]
  def change
    create_table :videos do |t|
      t.string :title
      t.datetime :publish_date
      t.boolean :status
      t.string :slug
      t.string :link
      t.string :description

      t.timestamps
    end
  end
end
