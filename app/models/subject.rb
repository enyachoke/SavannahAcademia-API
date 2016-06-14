class Subject < ApplicationRecord
  has_many :class_room_subjects
  SCHOOL_YEARS = (1..11).to_a
  belongs_to :year
  has_many :teacher_subjects
  has_many :teachers, :through => :teacher_subjects

  validates_presence_of :name
  validates_inclusion_of :year, :in => SCHOOL_YEARS
  validates_numericality_of :hours_per_week, :only_integer => true, :greater_than_or_equal_to => 1
end
