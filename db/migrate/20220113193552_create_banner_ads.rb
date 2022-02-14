class CreateBannerAds < ActiveRecord::Migration[5.0]
  def change
    create_table :banner_ads do |t|
      t.string :title
      t.datetime :start_date
      t.datetime :finish_date
      t.string :url
      t.string :file_ad
      t.boolean :status
      t.integer :format_ad_id

      t.timestamps
    end
  end
end
