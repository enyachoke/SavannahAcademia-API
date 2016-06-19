class CreateClassTimings < ActiveRecord::Migration[5.0]
  def change
    create_table :class_timings do |t|
      t.string :name
      t.integer :week_day
      t.belongs_to :student_group, foreign_key: true
      t.time :start_time
      t.time :end_time
      t.boolean :is_break, default: true

      t.timestamps
    end
  end
end
