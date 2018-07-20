class CreateWhiskeys < ActiveRecord::Migration[5.1]
  def change
    create_table :whiskeys do |t|
      t.string :name
      t.string :region
      t.integer :age
      t.integer :price
      t.string :classification
      t.string :description

      t.timestamps
    end
  end
end
