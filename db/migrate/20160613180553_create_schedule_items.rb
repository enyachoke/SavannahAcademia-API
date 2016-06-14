class CreateScheduleItems < ActiveRecord::Migration[5.0]
  def change
    create_table :schedule_items do |t|
      t.integer :weed_day
      t.belongs_to :time_table_item, foreign_key: true
      t.belongs_to :class_room, foreign_key: true
      t.belongs_to :student_group, foreign_key: true
      t.belongs_to :subject, foreign_key: true

      t.timestamps
    end
  end
end
