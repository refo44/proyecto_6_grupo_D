class Videobeam < ApplicationRecord
  has_and_belongs_to_many :reservations

  validates :code, uniqueness: true

  	def print_videobeam
    { 
    	id: self.id,
      code: self.code
    
    }
 	end 
end
