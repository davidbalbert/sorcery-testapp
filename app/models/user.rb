class User < ActiveRecord::Base
  authenticates_with_sorcery!
  
  validates_presence_of :email
  validates_presence_of :password, :on => :create
  validates_confirmation_of :password
  validates_uniqueness_of :email
  
  attr_accessible :email, :password, :password_confirmation
end