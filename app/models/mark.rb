class Mark < ApplicationRecord
  belongs_to :student
  belongs_to :schedule_item
end
