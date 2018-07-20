class AddPrefPronounToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :pref_pronoun, :string
  end
end
