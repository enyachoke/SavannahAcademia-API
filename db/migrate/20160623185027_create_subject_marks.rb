class CreateSubjectMarks < ActiveRecord::Migration[5.0]
  def change
    create_table :subject_marks do |t|
      t.belongs_to :exam_period, foreign_key: true
      t.belongs_to :subject, foreign_key: true
      t.belongs_to :student, foreign_key: true
      t.decimal :marks
      t.decimal :points

      t.timestamps
    end
  end
end
