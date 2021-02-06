class Event < ApplicationRecord
  belongs_to :user
  has_one_attached :photo, dependent: :destroy
  has_many :messages, dependent: :destroy
  has_many :bookings, dependent: :destroy
end
