class CreateClassRoomSubjects < ActiveRecord::Migration[5.0]
  def change
    create_table :class_room_subjects do |t|
      t.belongs_to :subject, foreign_key: true
      t.belongs_to :class_room, foreign_key: true

      t.timestamps
    end
  end
end
