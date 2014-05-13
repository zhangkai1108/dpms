class Section < ActiveRecord::Base
  validates :name ,:presence => true
  validates :url ,:presence => true
  validates :sort ,:presence => true,:numericality=>true
  attr_accessible :name, :sort, :url
end
