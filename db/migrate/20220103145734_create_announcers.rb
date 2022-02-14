class CreateAnnouncers < ActiveRecord::Migration[5.0]
  def change
    create_table :announcers do |t|
      t.string :image
      t.string :text
      t.timestamps
    end
  end
end
 