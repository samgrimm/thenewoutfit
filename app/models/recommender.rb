class Recommender < ActiveRecord::Base
  attr_accessible :bodytype, :color, :link, :need, :statement, :texture
  
 has_and_belongs_to_many :styles
  
end
