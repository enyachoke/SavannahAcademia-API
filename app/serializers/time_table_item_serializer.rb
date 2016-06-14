class TimeTableItemSerializer < ActiveModel::Serializer
  attributes :id, :start_time, :end_time, :item_type
end
