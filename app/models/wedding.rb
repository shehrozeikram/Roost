class Wedding < ApplicationRecord

  validates :name, presence: true
  validates :email, presence: true
  validates :phone_number, presence: true
  validates :date_from, presence: true
  validates :date_to, presence: true
  validates :packages, presence: true

end
