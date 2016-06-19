class AddAdmissionGroupIdToStudents < ActiveRecord::Migration[5.0]
  def change
    add_column :students, :admission_group_id, :integer
    add_index :students, :admission_group_id
  end
end
