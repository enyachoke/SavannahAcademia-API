class StudentSerializer < ActiveModel::Serializer
  attributes :id, :first_name, :middle_name, :last_name
  has_one :student_group
end
