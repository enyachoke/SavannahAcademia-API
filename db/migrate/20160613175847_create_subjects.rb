class CreateSubjects < ActiveRecord::Migration[5.0]
  def change
    create_table :subjects do |t|
      t.string :name
      t.belongs_to :year, foreign_key: true
      t.integer :hours_per_week

      t.timestamps
    end
  end
end
