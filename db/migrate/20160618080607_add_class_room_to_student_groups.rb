class AddClassRoomToStudentGroups < ActiveRecord::Migration[5.0]
  def change
    add_reference :student_groups, :class_room, foreign_key: true
  end
end
