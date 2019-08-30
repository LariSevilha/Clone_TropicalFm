class CreateSystemParameters < ActiveRecord::Migration[5.0]
  def change
    create_table :system_parameters do |t|
      t.boolean :survey, default: false
      t.boolean :photo_gallery, default: false
      t.boolean :photo_gallery_home, default: false
      t.boolean :video_gallery, default: false
      t.boolean :video_gallery_home, default: false
      t.boolean :nav_menu, default: false
      t.boolean :banner, default: false
      t.boolean :big_slide, default: false
      t.boolean :news, default: false
      t.boolean :last_news, default: false
      t.boolean :featured, default: false

      t.timestamps
    end
  end
end
