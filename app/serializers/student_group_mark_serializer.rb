class StudentGroupMarkSerializer < ActiveModel::Serializer
  attributes :id, :marks, :points, :comments,:student_id, :class_room_subject_id, :student_group_id,:exam_period_id
end
