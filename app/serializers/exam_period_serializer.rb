class ExamPeriodSerializer < ActiveModel::Serializer
  attributes :id, :label, :start_date, :end_date, :term_id
  has_one :term
  has_many :student_group_marks
end
