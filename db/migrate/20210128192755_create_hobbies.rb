class CreateHobbies < ActiveRecord::Migration[6.0]
  def change
    create_table :hobbies do |t|
      t.string :name
      t.text :desciption
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
