class CreateTeacherSubjects < ActiveRecord::Migration[5.0]
  def change
    create_table :teacher_subjects do |t|
      t.belongs_to :teacher, foreign_key: true
      t.belongs_to :subject, foreign_key: true

      t.timestamps
    end
  end
end
