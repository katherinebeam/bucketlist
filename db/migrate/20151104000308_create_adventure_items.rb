class CreateAdventureItems < ActiveRecord::Migration
  def change
    create_table :adventure_items do |t|
      t.string :title
      t.text :description
      t.string :neighborhood
      t.string :city
      t.string :state
      t.string :country
      t.string :category
      t.string :picture

      t.timestamps null: false
    end
  end
end
