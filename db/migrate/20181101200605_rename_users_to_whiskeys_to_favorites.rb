class RenameUsersToWhiskeysToFavorites < ActiveRecord::Migration[5.1]
  def change
    rename_table :users_to_whiskeys, :favorites
  end
end
