class SubjectMarkSerializer < ActiveModel::Serializer
  attributes :id, :marks, :points
  has_one :exam_period
  has_one :subject
  has_one :student
end
