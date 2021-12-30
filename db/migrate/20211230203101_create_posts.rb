class CreatePosts < ActiveRecord::Migration[7.0]
  def change
    create_table :posts do |t|
      t.string :user
      t.string :title
      t.text :body

      t.integer :sub_id
      t.integer :post_id

      t.timestamps
    end
  end
end
