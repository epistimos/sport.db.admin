
class Round < ActiveRecord::Base
    
  has_many :games, :order => 'pos'
  belongs_to :event
  
end # class Round

