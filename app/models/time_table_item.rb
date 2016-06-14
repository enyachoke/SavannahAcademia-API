class TimeTableItem < ApplicationRecord
  WEEK_DAYS = (1..6).to_a

  LESSON = 0
  SHORT_BREAK = 1
  LONG_BREAK = 2
  EXAM = 3
  validates_presence_of :start_time, :end_time
  validates_inclusion_of :item_type, :in => [ LESSON, SHORT_BREAK, LONG_BREAK ,EXAM]
end
