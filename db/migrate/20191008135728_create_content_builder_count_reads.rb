class CreateContentBuilderCountReads < ActiveRecord::Migration[5.2]
  def change
    create_table :content_builder_count_reads do |t|
      t.references :content_builder, index: true, foreign_key: true
      t.string :ip, :string

      t.timestamps null: false  
    end
  end
end
