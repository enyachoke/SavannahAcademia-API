class StudentGroupSerializer < ActiveModel::Serializer
  attributes :id, :name, :group_teacher_id ,:year_id ,:class_room_id
  has_one :year
  has_one :group_teacher
  has_one :class_room
end
