class RemoveIndexFromEvent < ActiveRecord::Migration[6.0]
  def change
    remove_index :events, :hobby_id
    remove_column :events, :hobby_id
  end
end
