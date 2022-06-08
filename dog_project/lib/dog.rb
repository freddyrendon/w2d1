class Dog

    def initialize (name, breed, age, bark, favorite_foods)
        @name = name
        @breed = breed 
        @age = age 
        @bark = bark 
        @favorite_foods = favorite_foods
    end 

    #GETTER
    def name
        @name  # @ instance variables
    end 

    #GETTER
    def breed
        @breed
    end 
    #SETTER
    def age=(new_age)
        @age = new_age
    end 

    #GETTER
    def age 
        @age 
    end 

    def bark
        if @age > 3
            return @bark.upcase
        else 
            return @bark.downcase 
        end 
    end 

    #GETTER
    def favorite_foods
        @favorite_foods
    end 

    def favorite_foods?(food_item)
        @favorite_foods.map(&:downcase).include?(food_item.downcase)
    end 
end
