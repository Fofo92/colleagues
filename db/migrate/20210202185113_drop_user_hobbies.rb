class DropUserHobbies < ActiveRecord::Migration[6.0]
  def change
    drop_table :user_hobbies do |t|
      t.references :user, null: false, foreign_key: true
      t.references :hobby, null: false, foreign_key: true

      t.timestamps
    end
  end
end
