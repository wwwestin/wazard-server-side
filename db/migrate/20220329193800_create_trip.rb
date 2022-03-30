class CreateTrip < ActiveRecord::Migration[6.1]
  def change
    create_table :trips do |t|
      t.string :name
      t.references :user
      t.references :location
    end
  end
end
 