class CreateSystemParameters < ActiveRecord::Migration[5.2]
  def change
    create_table :system_parameters do |t|

      t.boolean :survey

      t.boolean :photo_gallery
      t.boolean :photo_gallery_home

      t.boolean :video_gallery
      t.boolean :video_gallery_home

      t.boolean :nav_menu
      t.boolean :nav_menu_top
      t.boolean :nav_menu_side
      t.boolean :nav_menu_side_left

      t.boolean :banner

      t.boolean :big_slide

      t.boolean :last_news
      
      t.boolean :featured

      t.timestamps
    end
  end
end
