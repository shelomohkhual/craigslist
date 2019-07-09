class Post < ActiveRecord::Base
    # validates_presence_of :name, :email, :password #what is this?
    belongs_to :user, { :class_name => "User", :foreign_key => :user_id }
    belongs_to :category, { :class_name => "Category", :foreign_key => :category_id }
  end