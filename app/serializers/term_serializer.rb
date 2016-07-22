class TermSerializer < ActiveModel::Serializer
  attributes :id, :start_date, :end_date, :name, :year_id
  has_one :year
  has_many :exam_periods
end
