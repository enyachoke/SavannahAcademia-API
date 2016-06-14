class ScheduleItemSerializer < ActiveModel::Serializer
  attributes :id, :weed_day
  has_one :time_table_item
  has_one :class_room
  has_one :student_group
  has_one :subject
end
