class AddNumberOfParticipantsToEvent < ActiveRecord::Migration[6.0]
  def change
    add_column :events, :number_of_participants, :integer
  end
end
