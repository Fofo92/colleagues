class DropHobby < ActiveRecord::Migration[6.0]
  def change
    drop_table :hobbies
  end
end
