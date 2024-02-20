class Booking < ApplicationRecord

  validates :name, presence: true
  validates :email, presence: true
  validates :time, presence: true
  validates :rooms, presence: true

  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
end
