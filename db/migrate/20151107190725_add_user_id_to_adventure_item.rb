class AddUserIdToAdventureItem < ActiveRecord::Migration
  def change
    add_column :adventure_items, :user_id, :integer
  end
end
