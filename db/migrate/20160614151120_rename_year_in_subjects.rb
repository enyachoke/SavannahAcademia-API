class RenameYearInSubjects < ActiveRecord::Migration[5.0]
  def change
    rename_column :subjects, :year_id, :year
  end
end
