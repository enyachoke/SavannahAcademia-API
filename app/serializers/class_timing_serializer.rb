class ClassTimingSerializer < ActiveModel::Serializer
  attributes :id, :name, :week_day, :start_time, :end_time, :is_break
  has_one :student_group
end
