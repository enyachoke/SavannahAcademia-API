class SubjectMark < ApplicationRecord
  belongs_to :exam_period
  belongs_to :subject
  belongs_to :student
end
