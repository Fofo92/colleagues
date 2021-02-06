class RenameNumberOfParticipantsToMaxBooking < ActiveRecord::Migration[6.0]
  def change
    rename_column :events, :number_of_participants, :max_booking
  end
end
