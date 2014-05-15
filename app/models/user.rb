class User < ActiveRecord::Base
  validates :name, :presence => true;
  validates :email, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i, on: :create }
  attr_accessible :name, :email, :qq,:tel
  has_and_belongs_to_many :roles
end
