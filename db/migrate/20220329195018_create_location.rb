class CreateLocation < ActiveRecord::Migration[6.1]
  def change
    create_table :locations do |t|
      t.string :title
    end
  end
end
