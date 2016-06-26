class CreateExamPeriods < ActiveRecord::Migration[5.0]
  def change
    create_table :exam_periods do |t|
      t.belongs_to :term, foreign_key: true
      t.string :label
      t.date :start_date
      t.date :end_date

      t.timestamps
    end
  end
end
