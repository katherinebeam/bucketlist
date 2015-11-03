class CreateAdventureItems < ActiveRecord::Migration
  def change
    create_table :adventure_items do |t|
      t.string :title
      t.string :location
      t.string :category
      t.integer :points
      t.string :picture

      t.timestamps null: false
    end
  end
end
