class Map
    attr_accessor :map

    def initialize(key,value=true)
        @map = Array.new
        @map << [key, value]
    end

    def set(key, value=true)
    
    end

    def get(key)
 
    end

    def delete(key)
    
    end

    def show

    end


end

# example code for [] and []=method
# def [](x, y, z)
#     @data[x][y][z]
#   end

#   def []=(x, y, z, value)
#     @data[x][y][z] = value
#   end