class RemovePrefPronounFromUsers < ActiveRecord::Migration[5.1]
  def change
    remove_column :users, :pref_pronoun, :string
  end
end
