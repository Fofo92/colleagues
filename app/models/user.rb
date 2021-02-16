class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :messages, dependent: :destroy
  has_many :bookings, dependent: :destroy
  has_many :events, dependent: :destroy
  has_one_attached :photo
  acts_as_taggable_on :hobbies

  def name_initials
    return "#{first_name[O, 1]}" << "#{last_name[0, 1]}"
  end
end
