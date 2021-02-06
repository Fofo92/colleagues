class Event < ApplicationRecord
  belongs_to :user
  has_many :messages, dependent: :destroy
  has_many :bookings, dependent: :destroy
end
