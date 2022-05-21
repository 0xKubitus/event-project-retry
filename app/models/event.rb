class Event < ApplicationRecord
  belongs_to :admin, class_name: 'User'
  
  has_many :attendances
  has_many :attendees, foreign_key: "user_id", through: :attendances, class_name: "User"
end
