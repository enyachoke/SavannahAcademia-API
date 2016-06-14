class MarkSerializer < ActiveModel::Serializer
  attributes :id, :date, :mark, :type, :term_id, :year_id
  has_one :student
  has_one :schedule_item
end
