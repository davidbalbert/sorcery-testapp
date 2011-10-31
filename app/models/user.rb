class User < ActiveRecord::Base
  attr_accessible :username, :password, :password_confirmation, :authentications_attributes

  authenticates_with_sorcery! do |config|
    config.authentications_class = Authentication
  end

  validates_presence_of :username
  validates_presence_of :password, :on => :create
  validates_confirmation_of :password
  validates_uniqueness_of :username

  has_many :authentications, :dependent => :destroy
  accepts_nested_attributes_for :authentications
end
