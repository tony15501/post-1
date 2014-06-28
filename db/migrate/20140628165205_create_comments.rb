class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.text :comment
      t.integer :post_id
      t.integer :user_id

      t.timestamps
    end
    add_index :comments, :post_id, unique: true
    add_index :comments, :user_id, unique: true
  end
end
