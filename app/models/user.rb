class User < ApplicationRecord

  after_create :welcome_send


  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable


  has_many :administrated_events, foreign_key: "admin_id", class_name: "Event"
  has_many :attended_events, foreign_key: 'attendee_id', class_name: "Attendance"


  def welcome_send
    UserMailer.welcome_email(self).deliver_now
  end


end
