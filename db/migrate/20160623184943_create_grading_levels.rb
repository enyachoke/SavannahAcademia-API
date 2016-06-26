class CreateGradingLevels < ActiveRecord::Migration[5.0]
  def change
    create_table :grading_levels do |t|
      t.string :name
      t.decimal :marks_from
      t.decimal :marks_to
      t.decimal :points
      t.string :comments

      t.timestamps
    end
  end
end
