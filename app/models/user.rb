class User < ApplicationRecord
  has_many :administrated_events, foreign_key: "admin_id", class_name: "Event"
  has_many :attended_events, foreign_key: 'attendee_id', class_name: "Attendance"
end
