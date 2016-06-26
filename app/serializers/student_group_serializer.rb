class StudentGroupSerializer < ActiveModel::Serializer
  attributes :id, :name, :group_teacher_id, :year_id, :class_room_id, :students, :class_subjects
  has_one :year
  has_one :group_teacher
  has_one :class_room
  def class_subjects
    object.subjects.collect do |subject|
      { id: subject.id, subject_id: subject.subject_id, name: subject.subject.name }
    end
  end
end
