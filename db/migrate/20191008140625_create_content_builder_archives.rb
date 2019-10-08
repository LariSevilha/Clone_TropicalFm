class CreateContentBuilderArchives < ActiveRecord::Migration[5.2]
  def change
    create_table :content_builder_archives do |t|
      t.string :name
      t.string :file
      t.references :content_builder, foreign_key: true, index: true

      t.timestamps
    end
  end
end
