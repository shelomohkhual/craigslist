class CreateUser < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string  :name
      t.string  :email
      t.text    :password
    end
  end
end
