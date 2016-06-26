class StudentGroupMark < ApplicationRecord
  belongs_to :exam_period
  belongs_to :student
  belongs_to :class_room_subject
  belongs_to :student_group
end
