class ClassRoomSubject < ApplicationRecord
  belongs_to :subject, inverse_of: :class_room_subjects
  belongs_to :class_room, inverse_of: :class_room_subjects
  belongs_to :teacher, optional: true
end
