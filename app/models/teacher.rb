class Teacher < ApplicationRecord
  has_one :student_group, :foreign_key => "group_teacher_id"
  has_many :teacher_subjects
  validates :password, presence: false
end
