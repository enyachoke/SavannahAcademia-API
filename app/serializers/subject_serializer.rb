class SubjectSerializer < ActiveModel::Serializer
  attributes :id, :name, :hours_per_week
  has_one :year
end
