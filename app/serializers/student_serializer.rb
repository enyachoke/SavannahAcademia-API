class StudentSerializer < ActiveModel::Serializer
  attributes :id, :first_name, :middle_name, :last_name,:student_group_id,:admission_group_id
  has_one :student_group
  has_one :admission_group
end
