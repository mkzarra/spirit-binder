class UsersToWhiskeys < ActiveRecord::Migration[5.1]
  def up
    create_table :users_to_whiskeys do |t|
      t.belongs_to :user
      t.belongs_to :whiskey
    end
  end

  def down
    drop_table :users_to_whiskeys
  end
end
