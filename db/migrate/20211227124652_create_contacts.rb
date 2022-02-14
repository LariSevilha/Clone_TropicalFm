class CreateContacts < ActiveRecord::Migration[5.0]
  def change
    create_table :contacts do |t|
      t.string :text
      t.string :name
      t.string :email
      t.string :telefone
      t.string :mensage
      t.string :topic
      t.timestamps
    end
  end
end
