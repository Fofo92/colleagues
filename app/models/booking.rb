class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :event

  validate :ends_at_after_starts_at
  validates :starts_at, :ends_at, presence: true,
            inclusion: { in: (Date.today..Date.today + 1.years) }

  private

  def ends_at_afters_start_at
    return if ends_at.blank? || starts_at.blank?

    if ends_at < starts_at
      errors.add :end_at, "Doit être postérieure à la date de début de réservation"
    end
  end
end
