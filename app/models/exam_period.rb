class ExamPeriod < ApplicationRecord
  belongs_to :term
  has_many :student_group_marks
end
