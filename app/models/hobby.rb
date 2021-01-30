class Hobby < ApplicationRecord
  has_many :events, dependent: :destroy
  has_many :user_hobbies, dependent: :destroy
end
