class Event < ApplicationRecord
  belongs_to :user
  # belongs_to :hobby
  has_many :messages, dependent: :destroy
  has_many :bookings, dependent: :destroy
end
