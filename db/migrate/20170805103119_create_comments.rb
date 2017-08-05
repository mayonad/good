class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.text :content
      t.integer :rating
      t.integer :room_id
      t.string :user_idinteger

      t.timestamps null: false
    end
  end
end
