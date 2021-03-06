class Role < ActiveRecord::Base
  validates :rName, :presence =>true,:uniqueness => true
  attr_accessible :rName,:rDesc,:users
  has_and_belongs_to_many :users
end
