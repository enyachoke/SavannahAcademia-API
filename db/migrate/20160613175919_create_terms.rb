class CreateTerms < ActiveRecord::Migration[5.0]
  def change
    create_table :terms do |t|
      t.date :start_date
      t.date :end_date

      t.timestamps
    end
  end
end
