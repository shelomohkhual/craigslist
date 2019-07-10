class Post < ActiveRecord::Base
    validates_presence_of :post_name, :description, :subcategory_id, :location ,:payment #what is this?
    belongs_to :user, { :class_name => "User", :foreign_key => :user_id }
    belongs_to :subcategory, { :class_name => "Subcategory", :foreign_key => :subcategory_id }
  end