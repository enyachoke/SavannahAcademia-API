class StudentGroupMark < ApplicationRecord
  belongs_to :exam_period
  belongs_to :student
  belongs_to :class_room_subject
  belongs_to :student_group
  def subject_name
    class_room_subject.subject.name
  end

  def exam_period_name
    exam_period.label
  end
end
