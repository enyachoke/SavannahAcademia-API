class ScheduleItem < ApplicationRecord
  belongs_to :time_table_item
  belongs_to :class_room
  belongs_to :student_group
  belongs_to :subject
end
