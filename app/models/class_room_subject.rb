class ClassRoomSubject < ApplicationRecord
  belongs_to :subject
  belongs_to :class_room
end
