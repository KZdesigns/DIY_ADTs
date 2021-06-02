require 'byebug'

class Map
    attr_accessor :map

    def initialize(key,value=true)
        @map = Array.new
        @map << [key, value]
    end

    def set(key, value=true)
    
        (0...@map.length).each do |i|
            if @map[i][0] == key
                return @map[i][1] = value
            end
        end

        @map << [key, value]

    end

    def get(key)

        (0...@map.length).each do |i|
            if @map[i][0] == key
                return @map[i][1]
            end
        end
        nil
    end

    def delete(key)
        
        (0...@map.length).each do |i|
            if @map[i][0] == key
                return @map.delete_at(i)
            end
        end

        nil
    end

    def show
        deep_dup(map)
    end

    def deep_dup(arr)
        arr.map { |el| el.is_a?(Array) ? deep_dup(el) : el }
    end


end
