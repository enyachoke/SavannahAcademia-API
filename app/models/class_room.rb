class ClassRoom < ApplicationRecord
  has_many :class_room_subjects,inverse_of: :class_room
  has_many :subjects, through: :class_room_subjects
  accepts_nested_attributes_for :subjects
end
