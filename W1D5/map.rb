class Map 
    def initialize
        @underlying_array = []
    end

    def set(k, v)
        unless @underlying_array.flatten.include?(k)
            @underlying_array << [k, v]
        end
    end 

    def get(k)
        found_ele = ""
        @underlying_array.each do |ele|
            if ele.first == k
                found_ele = ele.last 
            end 
        end 
        return found_ele 
    end 

    def delete(k)
        @underlying_array.each_with_index do |ele, idx|
            if ele.first == k
                @underlying_array.delete_at(idx)
            end 
        end 
        return @underlying_array
    end

    def show
        @underlying_array
    end 
end

mapping_data = Map.new 
mapping_data.set("name", "josh")
mapping_data.set("name", "josh")
mapping_data.set("name3", "josh")
mapping_data.set("name4", "josh")
mapping_data.delete("name3")
mapping_data.delete("name4")
# p mapping_data
# p mapping_data.get("name")
p mapping_data.show