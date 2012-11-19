class Style < ActiveRecord::Base
  attr_accessible :bodytype, :color, :need, :statement, :texture
  
  has_many :recommenders
  
  
  validates :bodytype, :presence => true
  validates :color, :presence => true
  validates :need, :presence => true
  validates :texture, :presence => true
  validates :statement, :presence => true
  
end
