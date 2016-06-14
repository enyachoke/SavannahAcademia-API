class CreateYears < ActiveRecord::Migration[5.0]
  def change
    create_table :years do |t|
      t.string :name
      t.date :start_date
      t.date :end_date

      t.timestamps
    end
  end
end
