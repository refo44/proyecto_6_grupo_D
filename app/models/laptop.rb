class Laptop < ApplicationRecord
  has_and_belongs_to_many :reservations

    validates :code, uniqueness: true


	def print_laptop
    { 
    	id: self.id,
      code: self.code
    }
 	end   

end 