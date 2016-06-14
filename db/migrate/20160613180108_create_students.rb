class CreateStudents < ActiveRecord::Migration[5.0]
  def change
    create_table :students do |t|
      t.string :first_name
      t.string :middle_name
      t.string :last_name
      t.belongs_to :student_group, foreign_key: true

      t.timestamps
    end
  end
end
