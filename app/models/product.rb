class Product < ApplicationRecord

    def friendly_created_at
        created_at.strftime("%B %e, %Y")
    end

    def discount_10
        if price < 10
            return true
        else
            return false
        end
    end
    
    def tax
        price * 0.09
    end

    def total
        return price + tax
    end
        
end
