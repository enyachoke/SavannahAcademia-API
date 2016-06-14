class Teacher < ApplicationRecord
  has_one :student_group, :foreign_key => "group_teacher_id"
  has_many :teacher_subjects
end
