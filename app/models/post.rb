class User < ActiveRecord::Base
    validates_presence_of :name, :email, :password #what is this?
  end