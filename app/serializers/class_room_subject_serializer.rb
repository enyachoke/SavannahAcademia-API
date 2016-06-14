class ClassRoomSubjectSerializer < ActiveModel::Serializer
  attributes :id
  has_one :subject
  has_one :class_room
end
