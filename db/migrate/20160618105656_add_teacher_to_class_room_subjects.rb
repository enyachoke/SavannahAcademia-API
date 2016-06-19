class AddTeacherToClassRoomSubjects < ActiveRecord::Migration[5.0]
  def change
    add_reference :class_room_subjects, :teacher, foreign_key: true
  end
end
