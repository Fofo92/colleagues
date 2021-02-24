class AddAttributesToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :team, :string
    add_column :users, :joined_at, :date
    add_column :users, :bio, :text
  end
end
