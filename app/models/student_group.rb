class StudentGroup < ApplicationRecord
  has_many :students
  belongs_to :year
  belongs_to :class_room
  belongs_to :group_teacher, :class_name => "Teacher"
  def subjects
    class_room.class_room_subjects
  end
end
