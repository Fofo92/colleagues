class Hobby < ApplicationRecord
  has_many :events, dependent: :destroy
end
