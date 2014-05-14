class User < ActiveRecord::Base
  validates :name, :presence => true;
  attr_accessible :name, :email, :qq,:tel
  has_and_belongs_to_many :roles
end
