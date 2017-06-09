class Cake
    def initialize(ingredients = [])
        @ingredients = ingredients
    end
    
    def add_ingredients(new_ingredient)
        if @ingredients.nil?
            @ingredients = [new_ingredient]
        else
            @ingredients += [new_ingredient]
        end
        puts new_ingredient + " added!!"
    end
    
    def list_ingredients
        puts "listing ingredients.."        
        if @ingredients != []
            @ingredients.each {|element| 
            sleep(0.5)
            puts element
        }
        else
            puts "no ingredients yet!"
            puts "please add some.."
        end
    end
    
    def bake
        puts "baking cake..."
        sleep(2)
        puts "it's done!"
    end
end

if __FILE__==$0
    cake = Cake.new #create an object of class Cake
    cake.list_ingredients 
    ingredients = ["sugar","flour","eggs","vanilla"] 
    ingredients.each {|ingredient| #add ingredients
        sleep(0.5)
        cake.add_ingredients(ingredient)}
    cake.list_ingredients #list the added ingredients
    cake.bake #bake the cake
end