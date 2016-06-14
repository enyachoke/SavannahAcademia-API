class CreateMarks < ActiveRecord::Migration[5.0]
  def change
    create_table :marks do |t|
      t.date :date
      t.belongs_to :student, foreign_key: true
      t.integer :mark
      t.belongs_to :schedule_item, foreign_key: true
      t.string :type
      t.integer :term_id
      t.integer :year_id

      t.timestamps
    end
    add_index :marks, :term_id
    add_index :marks, :year_id
  end
end
