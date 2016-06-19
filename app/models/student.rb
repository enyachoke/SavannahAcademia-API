class Student < ApplicationRecord
  belongs_to :admission_group ,:class_name => 'StudentGroup'
  belongs_to :student_group
end
