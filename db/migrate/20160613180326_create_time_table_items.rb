class CreateTimeTableItems < ActiveRecord::Migration[5.0]
  def change
    create_table :time_table_items do |t|
      t.time :start_time
      t.time :end_time
      t.integer :item_type

      t.timestamps
    end
  end
end
