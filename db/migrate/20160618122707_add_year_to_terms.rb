class AddYearToTerms < ActiveRecord::Migration[5.0]
  def change
    add_reference :terms, :year, foreign_key: true
    add_column :terms, :name, :string
  end
end
