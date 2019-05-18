class Pet

    attr_accessor :name, :owner_name

end

class Lion < Pet

    def roar
        return "roooaaarrrrrrr"
    end 

end

class Meerkat < Pet

    def purr
        return "purrrrrr"
    end

end

class Warthog < Pet
    
    def sqeal
        return "squeeeeee"
    end

end

my_lion = Lion.new
my_lion.name = "Osho"
lion_name = my_lion.name

my_meerkat = Meerkat.new
my_meerkat.name = "Timone"
meerkat_name = my_meerkat.name

my_warthog = Warthog.new
my_warthog.name = "Pumba"
warthog_name = my_warthog.name

puts "#{lion_name} says #{my_lion.roar},
#{meerkat_name} says #{my_meerkat.purr},
#{warthog_name} says #{my_warthog.sqeal}."

puts my_lion.inspect
puts my_meerkat.inspect
puts my_warthog.inspect
