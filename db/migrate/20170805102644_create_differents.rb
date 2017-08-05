class CreateDifferents < ActiveRecord::Migration
  def change
    create_table :differents do |t|
      t.string :room_name
      t.text :description
      t.string :picture
      t.string :room_type
      t.integer :guests
      t.integer :bedroom
      t.integer :bed
      t.integer :price
      t.string :houserules
      t.integer :availability
      t.boolean :wifi

      t.timestamps null: false
    end
  end
end
