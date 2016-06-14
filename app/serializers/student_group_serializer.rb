class StudentGroupSerializer < ActiveModel::Serializer
  attributes :id, :name, :group_teacher_id
  has_one :year
end
