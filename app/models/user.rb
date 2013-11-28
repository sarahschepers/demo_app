class User < ActiveRecord::Base
  attr_accessible :email, :name
  has_many :microposts
  validates_presence_of :name,{presence => true}
  validates_presence_of :email,{presence => true}
  validates :email, :uniqueness => true
  validates :email, :format => { :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i, :on => :create }
end
