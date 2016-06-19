class AddHasExamToSubjects < ActiveRecord::Migration[5.0]
  def change
    add_column :subjects, :has_exam, :boolean, default: true
  end
end
