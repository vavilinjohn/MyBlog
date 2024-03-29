class User < ActiveRecord::Base
  attr_accessible :email, :lname, :login, :name, :password

  validates :name,     :presence => true
    validates :lname,    :presence => true
    validates :password, :presence => true
    validates :login,    :presence => true, :uniqueness => true
    validates :email,    :presence => true, :uniqueness => true

  has_many :posts, :dependent =>:destroy
end
