class Category < ActiveRecord::Base
    has_many :subcategories
    has_many :posts, through: :subcategories 
    has_many :users, through: :posts
  end