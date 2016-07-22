class Term < ApplicationRecord
  belongs_to :year
  has_many :exam_periods
end
