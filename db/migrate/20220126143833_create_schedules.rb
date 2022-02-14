class CreateSchedules < ActiveRecord::Migration[5.0]
  def change
    create_table :schedules do |t|
      t.string :name
      t.time :hour
      t.boolean :status
      t.integer :day

      t.timestamps
    end
  end
end
