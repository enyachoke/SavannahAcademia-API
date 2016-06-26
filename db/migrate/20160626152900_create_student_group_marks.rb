class CreateStudentGroupMarks < ActiveRecord::Migration[5.0]
  def change
    create_table :student_group_marks do |t|
      t.belongs_to :exam_period, foreign_key: true
      t.belongs_to :student, foreign_key: true
      t.belongs_to :class_room_subject, foreign_key: true
      t.belongs_to :student_group, foreign_key: true
      t.decimal :marks
      t.decimal :points
      t.string :comments

      t.timestamps
    end
  end
end
