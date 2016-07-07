# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
user = User.find_or_initialize_by(username: 'achachiez')
user.password = '123123123'
user.password_confirmation = '123123123'
user.save!
grades = ActiveSupport::JSON.decode(File.read('db/seeds/grades.json'))

grades.each do |a|
  grade = GradingLevel.find_or_initialize_by(name: a['name'])
  grade.marks_from = a['marks_from']
  grade.marks_to = a['marks_to']
  grade.points = a['points']
  grade.comments = a['comments']
  grade.save!
end
