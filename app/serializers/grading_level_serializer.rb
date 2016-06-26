class GradingLevelSerializer < ActiveModel::Serializer
  attributes :id, :name, :marks_from, :marks_to, :points, :comments
end
