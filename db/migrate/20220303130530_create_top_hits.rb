class CreateTopHits < ActiveRecord::Migration[5.0]
  def change
    create_table :top_hits do |t|
      t.string :link
      t.integer :colocation
      t.boolean :active , :default => true
      t.timestamps
    end
  end
end
