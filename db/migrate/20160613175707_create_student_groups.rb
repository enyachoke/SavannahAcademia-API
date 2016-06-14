class CreateStudentGroups < ActiveRecord::Migration[5.0]
  def change
    create_table :student_groups do |t|
      t.string :name
      t.belongs_to :year, foreign_key: true
      t.integer :group_teacher_id

      t.timestamps
    end
    add_index :student_groups, :group_teacher_id
  end
end
