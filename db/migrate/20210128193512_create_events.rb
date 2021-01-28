class CreateEvents < ActiveRecord::Migration[6.0]
  def change
    create_table :events do |t|
      t.string :name
      t.text :description
      t.datetime :starts_at
      t.datetime :ends_at
      t.references :user, null: false, foreign_key: true
      t.references :hobby, null: false, foreign_key: true
      t.string :location
      t.float :latitude
      t.float :longitude
      t.float :price

      t.timestamps
    end
  end
end
