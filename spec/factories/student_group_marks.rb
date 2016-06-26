FactoryGirl.define do
  factory :student_group_mark do
    exam_period nil
    student nil
    class_room_subject nil
    student_group nil
    marks "9.99"
    points "9.99"
    comments "MyString"
  end
end
