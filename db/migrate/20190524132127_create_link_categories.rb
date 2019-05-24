class CreateLinkCategories < ActiveRecord::Migration[5.2]
  def change
    create_table :link_categories do |t|

      t.timestamps
    end
  end
end
