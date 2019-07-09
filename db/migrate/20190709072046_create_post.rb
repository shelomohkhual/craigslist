class CreatePost < ActiveRecord::Migration[5.2]
  def change
    create_table :posts do |t|
      t.integer  :user_id
      t.integer  :category_id
      t.string :post_name
      t.string  :description
      t.string :location
      t.integer :payment
      t.timestamps
    end
  end
end
