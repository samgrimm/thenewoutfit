class Recommender < ActiveRecord::Base
  attr_accessible :bodytype, :color, :link, :need, :statement, :texture
  
  belongs_to :style
  
end
