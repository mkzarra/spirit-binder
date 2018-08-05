class RequireWhiskeyFields < ActiveRecord::Migration[5.1]
  def change
    change_column :whiskeys, :name, :string, null: false
  end
end
