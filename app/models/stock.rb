class Stock < ApplicationRecord 
    before_save :to_uppercase, :to_capitalize


    def to_uppercase 
        self.symbol.upcase! 
    end 

    def to_capitalize
        self.name.capitalize!
    end 

end
