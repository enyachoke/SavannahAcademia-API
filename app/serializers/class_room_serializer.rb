class ClassRoomSerializer < ActiveModel::Serializer
  attributes :id, :name, :number
  has_many :class_room_subjects
  has_many :subjects
end
